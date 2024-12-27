{
  # Import all your configuration modules here
  imports = [./bufferline.nix ./lsp.nix ./telescope.nix];

  opts = {
    compatible = false;

    number = true;
    relativenumber = true;
    cursorline = true;
    lazyredraw = true;
    showmatch = true;
    incsearch = true;
    hlsearch = true;

    spell = true;
    spelllang = "en";

    expandtab = true;
    tabstop = 2;
    softtabstop = 2;
    shiftwidth = 2;
    foldenable = true;
    history = 2000;
    undofile = true;
    splitright = true;
    splitbelow = true;
    cmdheight = 0;
  };

  globals.mapleader = " ";

  plugins.lastplace.enable = true;

  plugins.lualine.enable = true;

  plugins.oil.enable = true;

  plugins.neo-tree.enable = true;

  plugins.treesitter.enable = true;

  plugins.luasnip.enable = true;

  colorschemes.nord.enable = true;
}
