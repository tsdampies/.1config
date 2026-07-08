xset +dpms
xset dpms 300 300 300
vibrant-cli eDP-1 0
redshift -P -O 3600
picom -b 
~/.fehbg &
while true; do
    BATT=$(cat /sys/class/power_supply/BAT1/capacity)
    DATE=$(date +"%R")
    xsetroot -name " ${DATE} | ${BATT}% "
    sleep 1m
done &

exec dwm
