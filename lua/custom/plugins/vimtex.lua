--require("luasnip.loaders.from_lua").lazy_load({paths = "~/.config/nvim/LuaSnip/"})
return {{
  "lervag/vimtex",
  lazy = false, -- apparently it disables inverse search idk
  config = function()
    vim.g.vimtex_view_method = "sioyek"
    vim.g.vimtex_quickfix_autojump = true
    vim.g.vimtex_compiler_latexmk = {
      aux_dir = "./.latexmk/aux",
      out_dir = "./.latexmk/out",
    }
  end,
  keys = {
    { "<localLeader>l","", desc = "+vimtex"},
  },
  ft = 'tex',
}, {
  	"L3MON4D3/LuaSnip",
    config = function()
      require("luasnip.loaders.from_lua").lazy_load({paths = "~/.config/nvim/LuaSnip/"})
      local ls = require("luasnip")
      ls.config.setup({ enable_autosnippets = true, })
      vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
      vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
      vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})

      ls.config.set_config({store_selection_keys="<Tab>",})
      
      

      vim.keymap.set({"i", "s"}, "<C-E>", function()
      	if ls.choice_active() then
      		ls.change_choice(1)
      	end
      end, {silent = true})
    end,
}}
