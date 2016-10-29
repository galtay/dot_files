FONT_FILE=PowerlineSymbols.otf
FONT_CONF_FILE=10-powerline-symbols.conf

wget https://github.com/powerline/powerline/raw/develop/font/$FONT_FILE
wget https://github.com/powerline/powerline/raw/develop/font/$FONT_CONF_FILE

sudo cp $FONT_FILE /usr/share/fonts/X11/misc/
fc-cache -vf /usr/share/fonts/X11/misc/

cp $FONT_FILE $HOME/.fonts
fc-cache -vf $HOME/.fonts/

mkdir -p $HOME/.config/fontconfig/conf.d/
mv 10-powerline-symbols.conf $HOME/.config/fontconfig/conf.d/
