return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- Ícones das pastas
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      window = {
        position = "left", -- Abre na esquerda
        width = 30,
      },
    })
    
    -- Atalho: Barra Invertida (\) para abrir e fechar a árvore
    vim.keymap.set('n', '\\', '<cmd>Neotree toggle<cr>', { desc = 'NeoTree' })
  end,
}