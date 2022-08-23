# Mac 

- Install zsh : `brew install zsh`
- Verify installation : `zsh --version`
- Make it default shell : `chsh -s $(which zsh)`
- Test that it worked with echo `$SHELL`. Expected result: `/bin/zsh` or similar.
- Test with `$SHELL --version`. Expected result: `zsh 5.8` or similar
- Install `ohmyzsh` with `curl`
  ```bash
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  ```
- Setup ZSH Plugins
  1. Auto Suggestion
    - Download and set plugin
      ```bash
        git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
      ```
    - Set in `~/.zshrc`
      ```bash
        plugins=(
          ...
          zsh-autosuggestions
        )
      ```
    
# References
- [installing zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
- [Install OhMyZSH](https://github.com/ohmyzsh/ohmyzsh#basic-installation)
