# Starship Setup 

- [MAC] Install using curl
```bash
curl -sS https://starship.rs/install.sh | sh
```

- [ZSH] Set shell to use starship (Add to the end of file)
```bash
eval "$(starship init zsh)"
```

- Create Files configuration 
```bash
mkdir -p ~/.config && touch ~/.config/starship.toml
```

- Set configuration in `~/.config/starship.toml`
```toml
[battery]
full_symbol = "🔋 "
charging_symbol = "⚡️ "
discharging_symbol = "💀 "
```

# References
- [Configuration References](https://starship.rs/config/)
- [Installation guideline](https://starship.rs/guide/#%F0%9F%9A%80-installation)
- [Presets References](https://starship.rs/presets/)
