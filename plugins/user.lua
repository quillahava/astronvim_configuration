return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "EdenEast/nightfox.nvim",
    as = "nightfox",
    config = function()
      require("nightfox").setup{
        options = {
          styles = {
          comments = "italic",
          keywords = "bold",
          types = "italic,bold",
          }
        }
      }
    end,
  },
}
