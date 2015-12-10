echo -n "Which music folder you wanna play?";

read answer
if echo "$answer" | grep -iq "^/" ;then
    mplayer "$answer"/*.mp3
else
    echo "What the fuck! You don't understand?"
fi