{ pkgs, lib, ... }:

{
  programs.nvf = {
    enable = true;

    settings.vim = {
      # ─────────────────────────────────────────────
      # Basic Neovim behavior
      # ─────────────────────────────────────────────

      viAlias = true;
      vimAlias = true;

      opts = {
        number = true;
        relativenumber = true;

        expandtab = true;
        shiftwidth = 4;
        tabstop = 4;
        softtabstop = 4;

        smartindent = true;
        autoindent = true;

        cursorline = true;
        signcolumn = "yes";

        wrap = false;

        ignorecase = true;
        smartcase = true;

        splitbelow = true;
        splitright = true;

        scrolloff = 8;

        updatetime = 250;

        undofile = true;

        clipboard = "unnamedplus";

        termguicolors = true;
      };

      # ─────────────────────────────────────────────
      # Theme
      # ─────────────────────────────────────────────

      theme = {
        enable = true;
        name = "catppuccin";
        style = "mocha";
      };

      # ─────────────────────────────────────────────
      # Completion
      # ─────────────────────────────────────────────

      autocomplete = {
        nvim-cmp.enable = true;
      };

      # ─────────────────────────────────────────────
      # LSP
      # ─────────────────────────────────────────────

      lsp = {
        enable = true;

        formatOnSave = true;

        trouble.enable = true;
        lightbulb.enable = true;
        lspkind.enable = true;
      };

      # ─────────────────────────────────────────────
      # Java
      # ─────────────────────────────────────────────

      languages.java = {
        enable = true;

        lsp = {
          enable = true;

          # Eclipse JDT Language Server
          servers = [ "jdt-language-server" ];
        };

        format = {
          enable = true;
          type = [ "astyle" ];
        };

        treesitter.enable = true;

        dap.enable = true;

        extensions = {
          gradle-nvim.enable = true;
          maven-nvim.enable = true;
        };
      };

      # ─────────────────────────────────────────────
      # Nix
      # ─────────────────────────────────────────────

      languages.nix = {
        enable = true;
        lsp.enable = true;
        format.enable = true;
      };

      # ─────────────────────────────────────────────
      # General programming support
      # ─────────────────────────────────────────────

      languages = {
        enableTreesitter = true;
        enableFormat = true;
        enableExtraDiagnostics = true;

        bash.enable = true;
        json.enable = true;
        markdown.enable = true;
        toml.enable = true;
        yaml.enable = true;
        lua.enable = true;
        python.enable = true;
      };

      # ─────────────────────────────────────────────
      # Debugging
      # ─────────────────────────────────────────────

      debugger = {
        nvim-dap = {
          enable = true;
          ui.enable = true;
        };
      };

      # ─────────────────────────────────────────────
      # Git
      # ─────────────────────────────────────────────

      git = {
        enable = true;

        gitsigns.enable = true;

        git-conflict.enable = true;
      };

      # ─────────────────────────────────────────────
      # File navigation / UI
      # ─────────────────────────────────────────────

      filetree.neo-tree.enable = true;

      visuals = {
        nvim-web-devicons.enable = true;
        nvim-cursorline.enable = true;
        fidget-nvim.enable = true;
        indent-blankline.enable = true;
        nvim-scrollbar.enable = true;
      };

      ui = {
        borders.enable = true;

        noice.enable = true;

        colorizer.enable = true;

        illuminate.enable = true;

        fastaction.enable = true;

        smartcolumn = {
          enable = true;

          setupOpts.custom_colorcolumn = {
            java = "120";
            nix = "100";
          };
        };

        breadcrumbs.enable = true;
      };

      # ─────────────────────────────────────────────
      # Status line
      # ─────────────────────────────────────────────

      statusline.lualine = {
        enable = true;
        theme = "catppuccin";
      };

      # ─────────────────────────────────────────────
      # Comments / TODOs
      # ─────────────────────────────────────────────

      comments.comment-nvim.enable = true;

      notes.todo-comments.enable = true;

      # ─────────────────────────────────────────────
      # Terminal
      # ─────────────────────────────────────────────

      terminal.toggleterm = {
        enable = true;
        lazygit.enable = true;
      };

      # ─────────────────────────────────────────────
      # Useful editor behavior
      # ─────────────────────────────────────────────

      options = {
        spell = false;
      };
    };
  };
}
