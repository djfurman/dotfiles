# Disclaimer

Final installation script issues are down to when resets happen with the shell. It seems like those reboots may require multiple scripts. Otherwise, everything works as designed!

# Daniel's Dotfiles

I use several computers regularly and as I update settings, if I don't remember to do each of them I tend to drive myself a little nuts using aliases that aren't consistent. I finally decided it was time to address it as an issue - enter the dotfiles communities! I wanted to make this available to the community as well.

## Goal

* Provide a full environment setup to compile and sync my system stuff and settings
* Experiment with Mackup

## Clean Install

1. Update OS from the App Store
2. Link iCloud account
3. Enable FileVault
4. Enable your Firewall
5. Install and open Xcode to accept the license agreement
7. Install macOS Command Line Tools by running `xcode-select --install`
8. Generate yourself some OpenSSH keys, add them to your GitHub account `ssh-keygen -t ed25519 -C "My Name & Computer"`
5. Clone this repo to `~/.dotfiles`
7. Copy the example env file to your active one `cp .env.example .env`
7. Update your personal stuff into the `.env` file
7. Run `install.sh` to start the installation
8. Make sure Dropbox is running/configured
9. Restore preferences by running `mackup restore`
10. Restart your computer

Get to it!

## Security Notes

 * Don't back your up to FileVault key to Apple Instead; write it down, put it in a safe - this means you!
 * Don't *ever* share you crypto keys, with *anyone*, under *any circumstance*; it kinda defeats the purpose :smile:
 * Always keep your firewall operational, yes, it takes an extra second when you want to connect new apps, but data loss, identity theft and security breaches take MUCH longer to fix.
 * You should probably be using a VPN when not on a trusted network, this is just a note, but still. You'll note Viscosity (a Mac OpenVPN client) is installed by this repo's [`Brewfile`](./Brewfile).
 * Using a best practice from the many dotenv projects, I've included [`.env.example`](./.env.example) as an example of a place to store your config.

### SSH Keys

Several types of key ciphers exist with varying degrees of complexity/security offered. I am not a cryptography engineer and do not intend to turn this into an 'ECDSA vice ED25519 vice RSA-4096' discussion, so please do your own research on what level of security you need. If you are looking for good resources on the various key types and advantages/disadvantages there are many blogs available, but I believe [this article from arsTechnica](https://arstechnica.com/security/2013/10/a-relatively-easy-to-understand-primer-on-elliptic-curve-cryptography/) is a good place to start.

* I strongly recommend using both an ED25519 Elliptic Curve key as well as an RSA key for old stuff that doesn't support EC.
* Use passwords for your private keys please!

#### Elliptic Curve

`ssh-keygen -t ed25519 -C "My Name & Computer"`

#### RSA @ 4096 bytes

`ssh-keygen -t rsa -b 4096 -C "My Name & Computer"`

**Note** If you're going to (or required to) use an RSA key, keep an eye on NIST's recommendations for key length. For the next few years, 4096 is sufficient and I've read a few articles that even imply that beyond 3072 bytes you're hitting an asymptote for security/performance.

## Finding Your Way

Go through the [`.macos`](./.macos) file. You can find much more settings [explained by Dries](https://github.com/driesvints/dotfiles) and his reference points.

Check out the [`Brewfile`](./Brewfile) file to install for your machine. Use `brew search` or [their website search](https://caskroom.github.io/search) to check if the app you want to install is available. If it's not, consider making a pull request!

Check out the [`aliases.zsh`](./aliases.zsh) file and do your thing.

If you need to tweak your `$PATH` check out the [`path.zsh`](./path.zsh) file.

### Important note (credit to Dries)

>One thing you'll need to do manually is adding your `~/.zshrc` file. You can't symlink the `.zshrc` file from your dotfiles because Mackup will already symlink your `.zshrc` from your home directory. That's why we'll need to create the file manually. Add the contents below to a `.zshrc` file in your user directory. What it will do is load the `.zshrc` file from your dotfiles. Make sure that the path to your dotfiles is correct.

## Mackup

When installing these dotfiles for the first, go ahead and backup with Mackup. Your settings will be synced to your Dropbox so you can use them to sync between computers and reinstall them when reinstalling your Mac. If you want to learn more, [check out the documentation](https://github.com/lra/mackup#supported-storages).

```zsh
mackup backup
```

# Contributing

Please open issues for any enhancements you may have or issues you find, I'll respond as quickly as possible. Thanks!

# Some Background

It's been several years since I've done a fresh install of my Mac. Over time, remnants of past experiments, accumulated old settings, and what not have "left their mark". Time to fix that with a clean install! I'm going to coordinate that with the Sierra OS update too, because; well, why not?

# Credits

After a lot of research and reading Dries' Dotfiles repo severed largely as my template for getting to this point.
[Read his blog post here](https://driesvints.com/blog/getting-started-with-dotfiles). Another key resource for me was he [Github does dotfiles](https://dotfiles.github.io/) project. Please check them both out and don't hesitate to contribute!
