echo -n "Which music folder you wanna play?";

read answer
if echo "$answer" | grep -iq "^/" ;then
    mplayer "$answer"/*.mp3
else
    echo "Oh, sorry. You need to chose the directory which have '.mp3' files!"
fi