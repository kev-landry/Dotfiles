local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    mode = "tabs",
    -- separator_style = 'slant',
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end
  },
  -- highlights = {
  --   separator = {
  --     fg = '#24283b',
  --     bg = '#24283b',
  --   },
  --   separator_selected = {
  --     fg = '#24283b',
  --   },
  --   background = {
  --     fg = '#657b83',
  --     bg = '#24283b'
  --   },
  --   -- buffer_selected = {
  --   --   fg = '#fdf6e3',
  --   --   bold = true,
  --   -- },
  --   fill = {
  --     bg = '#24283b'
  --   },
  -- }
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})