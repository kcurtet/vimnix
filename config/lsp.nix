{
  plugins = {
    lsp.enable = true;
    lsp.servers = {
      nixd.enable = true;
      nixd.autostart = true;

      ts_ls.enable = true;

      lua_ls.enable = true;

      rust_analyzer.enable = true;
      rust_analyzer.installCargo = false;
      rust_analyzer.installRustc = false;

      denols.enable = true;

      intelephense.enable = true;
    };

    none-ls = {
      enable = true;
      sources.formatting.alejandra.enable = true;
    };

    lsp-format = {
      enable = true;
      luaConfig.post = ''
        vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            callback = function()
        	vim.lsp.buf.format({ bufnr = bufnr })
            end,
        })

      '';
    };

    cmp = {
      enable = true;
      autoEnableSources = true;
    };
  };
}
