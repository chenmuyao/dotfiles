#! /bin/sh
/usr/bin/VBoxClient  --seamless &
/usr/bin/VBoxClient  --clipboard &
sleep 1
xcompmgr &
devilspie -a &
xbindkeys&
fcitx &
variety &
