local Plug = vim.fn['plug#']
-- Call plug
vim.call('plug#begin', "~/.vim/plugged")
	Plug 'pechorin/any-jump.vim'
	Plug 'https://github.com/tommcdo/vim-lion'
	Plug 'https://github.com/tpope/vim-commentary'
	Plug 'https://github.com/RRethy/vim-illuminate'
	Plug 'ms-jpq/chadtree'
	Plug 'ms-jpq/coq_nvim'
	Plug 'ms-jpq/coq.artifacts'
	Plug 'ms-jpq/coq.thirdparty'
	Plug 'feline-nvim/feline.nvim'
	Plug 'mattn/emmet-vim'
	Plug 'alvan/vim-closetag'
	Plug 'junegunn/goyo.vim'
	Plug 'dense-analysis/ale'
	Plug 'metakirby5/codi.vim'
	Plug 'challenger-deep-theme/vim'
vim.call('plug#end')

vim.opt.termguicolors = true

vim.g.coq_settings = {
auto_start = "shut-up" 
}
require("coq")
require('feline').setup()

-- Colorscheme
vim.cmd[[colorscheme challenger_deep]]


vim.cmd[[nmap <c-v> "+p]]
vim.cmd[[nnoremap <leader>v <cmd>CHADopen<cr>]]
vim.cmd[[tnoremap <esc><esc> <C-\><C-N>]]
vim.api.nvim_set_keymap("n", "<c-c>", '"*y :let @+=@*<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap("n", "<c-v>", '"+p', {noremap=true, silent=true})

-- Font
-- vim.opt.guifont = { "Source Code Pro", ":h11" }
 vim.opt.guifont = { "GohuFont", ":h11" }



vim.opt.mouse = "a"
vim.opt.ruler = true
vim.opt.autochdir = true
vim.opt.number = true
