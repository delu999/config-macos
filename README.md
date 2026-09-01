# macOS Development Setup

Personal macOS configuration files for my development environment.

## To install

- [Starship](https://starship.rs/) — shell prompt
- [fzf](https://github.com/junegunn/fzf) — command-line fuzzy finder
- [zoxide](https://github.com/ajeetdsouza/zoxide) — smarter `cd` command
- [ast-grep](https://ast-grep.github.io/) — structural search and replace across TS/TSX/PHP/Python, where `rg` only matches text
- [difftastic](https://difftastic.wilfred.me.uk/) — syntax-aware diff that hides reformatting noise when reviewing a commit
- [shellcheck](https://www.shellcheck.net/) — catches quoting and word-splitting bugs in `.bashrc` and production scripts
- [shfmt](https://github.com/mvdan/sh) — formatter for shell scripts
- [yq](https://github.com/mikefarah/yq) — what `jq` is for JSON, but for YAML such as `docker-compose.yml`
- [ripgrep](https://github.com/BurntSushi/ripgrep) — faster and simpler `grep`, skips anything in `.gitignore`
- [fd](https://github.com/sharkdp/fd) — faster and simpler `find`

Install them with [mise](https://mise.jdx.dev/):

```sh
mise use -g duckdb clickhouse ast-grep difftastic yq shellcheck shfmt ripgrep fd
```

Apply the configuration with:

```sh
./apply_config.sh
```
