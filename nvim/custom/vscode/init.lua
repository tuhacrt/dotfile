require("core")

if vim.g.vscode then
  local custom_init_path = vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1]

  if custom_init_path then
    dofile(custom_init_path)
  end

  require("core.utils").load_mappings()

  local config = require("core.utils").load_config()
  local plugins = require("custom.plugins")

  local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

  -- bootstrap lazy.nvim!
  if not vim.loop.fs_stat(lazypath) then
    -- require("core.bootstrap").gen_chadrc_template()
    require("core.bootstrap").lazy(lazypath)
  end

  -- dofile(vim.g.base46_cache .. "defaults")
  vim.opt.rtp:prepend(lazypath)

  require("lazy").setup(plugins, config.lazy_nvim)
else
  -- ordinary Neovim
end
