scriptencoding utf-8

source $HOME/.vim/settings.vim

" Plugins
source $HOME/.vim/plugs.vim
source $HOME/.vim/plug-settings.vim

" General settings
source $HOME/.vim/commands.vim
source $HOME/.vim/functions.vim
source $HOME/.vim/mapping.vim

" Filetype-specific settings (registering and using filetypes)
source $HOME/.vim/ft-settings.vim

source $HOME/.vim/highlights.vim

":autocmd InsertEnter,InsertLeave * set cul!
"let &t_SI = "\<Esc>]12;yellow\x7"
"let &t_SR = "\<Esc>]12;red\x7"
"let &t_EI = "\<Esc>]12;blue\x7"
