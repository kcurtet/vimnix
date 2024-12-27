{
  plugins.telescope.enable = true;

  keymaps = [
    {
      key = "<leader>ff";
      action = "<cmd>Telescope find_files<CR>";
      options.desc = "find files";
    }
    {
      key = "<leader>fd";
      action = "<cmd>Telescope find_files cwd=~/.dotfiles<CR>";
      options.desc = "find files";
    }
    {
      key = "<leader>fv";
      action = "<cmd>Telescope find_files cwd=~/code/nixvim";
    }
  ];
}
