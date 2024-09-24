-- == User settings ==
vim.o.scrolloff = 7;

-- == Lenght line for *.py files == 
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python,javascript,vue,typescript,c",
  callback = function()
    vim.api.nvim_set_option_value("colorcolumn", "88", {})
  end
})

return {
  {
    -- == Auto save == -- 
    
    "okuuva/auto-save.nvim",
    cmd = "ASToggle", -- optional for lazy loading on command
    event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
    opts = { 
      enabled = true, -- start auto-save when the plugin is loaded
      debounce_delay = 1500, -- delay after which a pending save is executed
    },
    keys = {
      { "<leader>n", ":ASToggle<CR>", desc = "Toggle auto-save" },
    }, 
  }

}
