xdotool keyup ctrl+alt
windowid=$(xdotool getwindowfocus)
xdotool sleep 0.1 windowactivate --sync $windowid key ctrl+shift+Left
#sleep 0.1 && xdotool sleep 0.1 windowactivate --sync $windowid key ctrl+c
sleep 0.1 && texty=$(xsel -p)
#sleep 0.3 && texty=$(xclip -o | awk '{print $NF}')
lang="hi"
selections=$(curl -s "https://inputtools.google.com/request?text=$texty&itc=$lang-t-i0&num=6" | jq -r '.[1][0][1][] ')
printf "%s\n" "$selections"
selected_item=$(echo "$selections" | tr ' ' '\n' | rofi -dmenu -p "Select: ")
sleep 0.1 && windowid=$(xdotool getwindowfocus)
xdotool sleep 0.1 windowactivate --sync $windowid type "$selected_item"

