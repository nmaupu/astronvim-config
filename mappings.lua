-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<C-Up>"] = { ":wincmd k<cr>", desc = "Navigate to the pane up" },
    ["<C-Down>"] = { ":wincmd j<cr>", desc = "Navigate to the pane down" },
    ["<C-Left>"] = { ":wincmd h<cr>", desc = "Navigate to the pane left" },
    ["<C-Right>"] = { ":wincmd l<cr>", desc = "Navigate to the pane right" },
    ["<C-S-Up>"] = { ":horizontal res -5<cr>", desc = "Decrease pane size vertically" },
    ["<C-S-Down>"] = { ":horizontal res +5<cr>", desc = "Increase pane size vertically" },
    ["<C-S-Left>"] = { ":vertical res -5<cr>", desc = "Decrease pane size horizontally" },
    ["<C-S-Right>"] = { ":vertical res +5<cr>", desc = "Increase pane size horizontally" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {},
  v = {},
}
