

# Daniel's Dotfiles

I use several computers regularly. As I update settings, if I don't remember to update each of them, I tend to drive myself a little nuts using aliases that aren't consistent. I finally decided it was time to address this as an issue - enter the dotfiles communities! I wanted to make this available to the community as well.

#### Goals:
* Provide a full environment setup to compile and sync my system stuff and settings
* Experiment with Mackup

**Disclaimer**: Final installation script issues are down to when resets happen with the shell. It seems like those reboots may require multiple scripts. Otherwise, everything works as designed!

## Clean Install

1. Update OS from the App Store
2. Link iCloud account
3. Enable FileVault
4. Enable your Firewall
5. Install and open Xcode to accept the license agreement
7. Install macOS Command Line Tools by running `xcode-select --install`
8. Generate OpenSSH keys and add them to your GitHub account `ssh-keygen -t ed25519 -C "My Name & Computer"`
5. Clone this repository to `~/.dotfiles`
7. Copy the example env file to your active one `cp .env.example .env`
7. Copy your environment variables into the `.env` file
7. Run `install.sh` to start the installation
8. Make sure Dropbox is running/configured
9. Restore preferences by running `mackup restore`
10. Restart your computer

Get to it!

## Security Notes

 * Don't backup your FileVault key. Instead, write it down and put it in a safe.
 * Don't *ever* share you crypto keys with *anyone* under *any circumstance*. It defeats the purpose :smile:
 * Always keep your firewall operational. Although it takes an extra second when you want to connect new apps, data loss, identity theft and security breaches take MUCH longer to fix.
 * It is recommended to use a VPN when not on a trusted network. You'll note Viscosity (a Mac OpenVPN client) is installed by this repo's [`Brewfile`](./Brewfile).
 * Using a best practice from the many dotenv projects, I've included [`.env.example`](./.env.example) as an example of a place to store your configurations.

### SSH Keys

Several types of key ciphers exist that have various degrees of complexity/security. I am not a cryptography engineer and do not intend to turn this into an 'ECDSA vice ED25519 vice RSA-4096' discussion, so please do your own research on the level of security you need. If you are looking for good resources on various key types and their advantages/disadvantages, there are many blogs available. I believe [this article from arsTechnica](https://arstechnica.com/security/2013/10/a-relatively-easy-to-understand-primer-on-elliptic-curve-cryptography/) is a good place to start.

* I strongly recommend using both an ED25519 Elliptic Curve key and an RSA key for old stuff that doesn't support EC.
* Protect your private keys with passwords.

#### Elliptic Curve

`ssh-keygen -t ed25519 -C "My Name & Computer"`

#### RSA @ 4096 bytes

`ssh-keygen -t rsa -b 4096 -C "My Name & Computer"`

**Note** If you're going to use an RSA key, keep an eye on NIST's recommendations for key length. For the next few years, 4096 is sufficient. According to the articles that I have read, beyond 3072 bytes, you will be hitting an asymptote for security/performance.

## Finding Your Way

Go through the [`.macos`](./.macos) file. You can find more information on settings [explained by Dries](https://github.com/driesvints/dotfiles).

Check out the [`Brewfile`](./Brewfile) file to install it on your machine. Use `brew search` or [their website search](https://caskroom.github.io/search) to check if the app you want to install is available. If it's not, make a pull request.

Check out the [`aliases.zsh`](./aliases.zsh) file and make your changes.

If you need to tweak your `$PATH`, check out the [`path.zsh`](./path.zsh) file.

### Important note (credit to Dries)

>You can't symlink the `.zshrc` file from your dotfiles because Mackup will symlink your `.zshrc` from your home directory.  You'll need to manually create your own `~/.zshrc` file. Add the contents below to a `.zshrc` file in your user directory. (This will load the `.zshrc` file from your dotfiles). Make sure that the path to your dotfiles is correct.

## Mackup

When installing these dotfiles for the first time, back them up with Mackup. Mackup uses Dropbox to keep your dotfiles and computer settings in sync. You can reinstall the settings when reinstalling your Mac. To learn more, [check out the documentation](https://github.com/lra/mackup#supported-storages).

```zsh
mackup backup
```

# Contributing

Please open issues for any enhancements you may have or issues you find. I'll respond as quickly as possible. Thanks!

# Some Background

It's been several years since I've done a fresh install on my Mac. Over time, remnants of past experiments have accumulated old settings and what not have "left their mark". Time to fix that with a clean install! I'm going to coordinate that with the Sierra OS update too, because why not?

# Credits

After a lot of research and reading, Dries' Dotfiles repository severed largely as my template for getting to this point.
[Read his blog post here](https://driesvints.com/blog/getting-started-with-dotfiles). Another key resource for me was the [Github does dotfiles](https://dotfiles.github.io/) project. Please check them both out and don't hesitate to contribute!
