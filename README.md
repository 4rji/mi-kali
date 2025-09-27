# Custom Kali Live ISO (KDE, Zsh, Dotfiles, User 4rji)

Build a Kali Linux live ISO that ships with the KDE desktop, Zsh as the default shell, your personal dotfiles, and a preconfigured `4rji` user. This repository extends Kali's `live-build` tooling so you can reproduce the same live environment every time.

## Prerequisites

Prepare a Debian or Kali build host:

```bash
sudo apt update
sudo apt install -y \
    git live-build simple-cdd cdebootstrap curl
```



## 1. Clone the Repository

```bash
git clone https://github.com/4rji/mi-kali.git
cd mi-kali
```




## 2. Add Extra Packages to the KDE Variant

Append any additional packages you want to `kali-config/variant-kde/package-lists/kali.list.chroot`.
Example additions:

```
chafa
rg
fd-find
ifupdown
xclip
iproute2
net-tools
iputils-ping
moreutils
grc
zsh
git
curl
wget
kitty
fzf
zoxide
bat
lsd
fd-find
fonts-powerline
fonts-jetbrains-mono
golang
ruby-lolcat
ruby-optimist
ruby-paint
```



Feel free to tailor this list to match your toolkit.

## 3. Bundle Dotfiles and Desktop Configuration (use my own or put yours here)

Anything placed in `kali-config/common/includes.chroot/etc/skel` is copied into the live user's home directory. Create the directory tree and copy your configuration files:

```bash
mkdir -p kali-config/common/includes.chroot/etc/skel
cp ~/.zshrc        kali-config/common/includes.chroot/etc/skel/
cp ~/.p10k.zsh     kali-config/common/includes.chroot/etc/skel/
cp -r ~/.oh-my-zsh kali-config/common/includes.chroot/etc/skel/
cp ~/.todo.txt     kali-config/common/includes.chroot/etc/skel/
cp ~/.ssha         kali-config/common/includes.chroot/etc/skel/
cp -r ~/.config    kali-config/common/includes.chroot/etc/skel/
```

Add or remove files as needed to match your preferred setup.




## 4. Replace the Default User with `4rji`

Create a hook at `kali-config/common/hooks/live/10-user.hook.chroot` to remove the stock `kali` user and create `4rji` with Zsh and sudo access:

```sh
#!/bin/sh
set -e

# Remove the default kali user when present
if id kali >/dev/null 2>&1; then
    deluser --remove-home kali
fi

# Create the custom user
useradd -m -s /usr/bin/zsh 4rji

# Set password (username = password)
echo "4rji:4rji" | chpasswd

# Add to sudoers group
usermod -aG sudo 4rji
```

Mark the hook executable so `live-build` runs it:

```bash
chmod +x kali-config/common/hooks/live/10-user.hook.chroot
```



## 5. Bundle Custom Binaries (Optional)

Place custom binaries or scripts under `kali-config/common/includes.chroot/opt/4rji/bin` so they ship inside the live filesystem. Create additional directories as needed (`etc`, `usr`, and so on) within `kali-config/common/includes.chroot/` to override files in the root filesystem.




## 6. Build the ISO

Kick off the KDE build with verbose logging:

```bash
sudo ./build.sh --variant kde --verbose
```

The generated ISO will be available under `images/`.

## Expected Result

- User: `4rji`
- Password: `4rji`
- Default shell: Zsh
- Dotfiles loaded from `.zshrc`, `.p10k.zsh`, `.oh-my-zsh`, `.config`
- Extra packages installed (kitty, fzf, zoxide, etc.)

Boot the ISO and the live session will match your customized environment.

