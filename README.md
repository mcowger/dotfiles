dotfiles
========

My dotfiles

To install:

    pip install --user git+git://github.com/Lokaltog/powerline;
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh; 
    rm -rf temp; mkdir temp && git clone https://github.com/mcowger/dotfiles.git temp &&  cp -fr temp/.* temp/* ./ && rm -Rf temp
