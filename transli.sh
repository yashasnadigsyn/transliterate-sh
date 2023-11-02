
lang="hi"

xdotool keyup alt+q
windowid=$(xdotool getwindowfocus)
xdotool sleep 0.2 windowactivate --sync $windowid key ctrl+shift+Left
sleep 0.2 && texty=$(xsel -p | xargs)
selections=$(curl -s "https://inputtools.google.com/request?text=$texty&itc=$lang-t-i0&num=6" | jq -r '.[1][0][1][] ')
printf "%s\n" "$selections"
selected_item=$(echo "$selections" | tr ' ' '\n' | rofi -dmenu -p "Select: ")
sleep 0.2 && windowid=$(xdotool getwindowfocus)
xdotool sleep 0.2 windowactivate --sync $windowid type "$selected_item"

