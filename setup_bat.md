## Setup Bat


- Add new alias for dark mode based on [this link](https://github.com/sharkdp/bat#dark-mode) in your file (`~/.zshrc`/`./bashrc`/`etc`).
```bash
alias cat="bat --theme=\$(defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo default || echo GitHub)"
```
