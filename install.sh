destination_dir="~/.config/nvim"
if [ ! -d "$destination_dir" ]; then
    mkdir -p "$destination_dir"
fi

cp -r ./* "$destination_dir"

cd ~
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' 

cd ~/.config/nvim/after/plugin 
cp ~/.config/nvim/after/plugin/config_telescope.lua /usr/local/share/lua/5.1
