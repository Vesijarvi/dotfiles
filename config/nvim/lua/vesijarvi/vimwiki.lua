vim.g.vimwiki_list = {{
    --path = os.getenv(NOTES_HOME) .. '/vimwiki/',
    path = '$NOTES_HOME/',
    syntax = 'markdown',
    ext = '.md',
    auto_toc = 1,
}}

vim.api.nvim_set_var('vimwiki_listsyms', ' .oOx')
vim.api.nvim_set_var('vimwiki_markdown_link_ext', 1)

local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = false })
end

map('n', '<leader>toc', ':VimwikiTOC<CR>')
map('n', 'glc', ':VimwikiToggleListItem <CR>')
