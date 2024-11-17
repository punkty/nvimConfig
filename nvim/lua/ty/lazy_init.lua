local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
        vim.fn.system({
          "git",
          "clone",
          "--filter=blob:none",
          "https://github.com/folke/lazy.nvim.git",
          "--branch=stable", -- latest stable release
          lazypath,
  })
  end
  vim.opt.rtp:prepend(lazypath)

  require("lazy").setup({
        spec = "ty.lazy",
        change_detection = { notify = false },
        {import = "lazyvim.plugins.extras.lang.typescript"},
        {import = "lazyvim.plugins.extras.lang.json"},
        {import = "lazyvim.plugins.extras.ui.min-animation"},
  })
