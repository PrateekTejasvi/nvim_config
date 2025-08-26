nnoremap <leader>h <cmd>wincmd h<CR>
nnoremap <leader>l <cmd> wincmd l <CR>
nnoremap <leader>k <cmd>wincmd k <CR>
nnoremap <leader>h <cmd>wincmd j <CR>
nnoremap <leader>l <cmd> wincmd l <CR>

nnoremap <leader>i :lua require('config_telescope').search_config()<CR>
nnoremap <leader>p :lua require('config_telescope').search_programs()<CR>
nnoremap <leader>fi :lua require('config_telescope').search_word()<CR>
nnoremap <leader>sp :lua require('config_telescope').search_projects()<CR>
nnoremap <leader>e :lua require'telescope'.extensions.file_browser.file_browser()<CR>
nnoremap <leader>t :TroubleToggle<CR>
nnoremap <leader>th :ToggleTerm direction=horizontal size=8 <CR>
nnoremap <leader>tv :ToggleTerm direction=vertical size=40<CR>
nnoremap <leader>ft :ToggleTerm direction=float size=5<CR>
nnoremap <C-w> :bdelete<CR>
nnoremap <leader>h :wincmd h <CR>
nnoremap <leader>j :wincmd j <CR>
nnoremap <leader>k :wincmd k <CR>
nnoremap <leader>l :wincmd l <CR>

nnoremap <silent><leader><tab> <cmd>BufferLineCycleNext<CR>
nnoremap<silent><leader><S-tab> <cmd>BufferLineCyclePrev<CR>
"Compile keys for arduino
nnoremap <leader>o :TermExec cmd="arduino-cli compile --fqbn arduino:avr:nano:cpu=atmega328old"<CR>
nnoremap <leader>u :TermExec cmd="arduino-cli upload -p /dev/ttyUSB0 --fqbn arduino:avr:nano:cpu=atmega328old"<CR>

nnoremap <leader>v :TermExec cmd="arduino-cli compile --fqbn esp32:esp32:esp32"<CR>
nnoremap <leader>s :TermExec cmd="arduino-cli upload -p /dev/ttyUSB0 --fqbn esp32:esp32:esp32"<CR>
