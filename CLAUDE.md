# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Neovim configuration built on [LazyVim](https://lazyvim.github.io/) (v8). LazyVim provides a full IDE-like base config; this repo customizes and extends it.

## Architecture

- `init.lua` — Entry point, loads `config.lazy`
- `lua/config/` — Core configuration (loaded automatically by LazyVim):
  - `lazy.lua` — lazy.nvim bootstrap and plugin setup
  - `options.lua` — Vim options (custom cursor settings)
  - `keymaps.lua` — Custom keybindings (Diffview history, terminal escape)
  - `autocmds.lua` — Autocommands (mostly commented-out defaults)
  - `highlights.lua` — Highlight overrides (currently commented out)
  - `root.lua` — Custom LSP root detection for monorepo/frontend projects
- `lua/plugins/` — Plugin specs (each file returns a lazy.nvim plugin spec table)
- `lazyvim.json` — Tracks enabled LazyVim extras
- `stylua.toml` — Lua formatter config (2-space indent, 120 col width)
- `lazy-lock.json` — Plugin version lockfile (auto-generated)

## Enabled LazyVim Extras

DAP core, editor refactoring, and language support for JSON, Markdown, Python, and TOML. Test core is also enabled.

## Language-Specific Setup

- **Python**: pylsp with ruff linting (line length 120), isort enabled, pycodestyle disabled. DAP configured with `justMyCode = false`.
- **Rust**: rust-tools.nvim with `<Leader>rh` (hover) and `<Leader>ra` (code actions).
- **TypeScript**: Custom root detection via `config.root` (tsconfig.json, package.json, vite/next configs).
- **Spelling**: ltex-ls enabled for markdown, text, gitcommit, and python files.

## Key Conventions

- Lua formatting: use `stylua` (config in `stylua.toml` — spaces, 2-wide indent, 120 col width)
- Plugin specs go in individual files under `lua/plugins/`, each returning a table
- LSP servers are installed automatically via mason-lspconfig (`automatic_installation = true`)
- Custom plugins load eagerly by default (`lazy = false` in lazy.lua defaults)
