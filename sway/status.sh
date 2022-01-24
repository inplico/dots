#date_formatted=$(date +"%Y-%m-%d %H:%M:%S")
#date_formatted=$(date %a%d%b %H:%M:%S")
date_formatted=$(date "+%a %d %b, %H:%M:%S")

#weather_formatted=$(curl "https://wttr.in/Christchurch?format=3")
weather_formatted=$(curl "https://wttr.in/Christchurch?format=%l,%20%t" | tr -d '+')

#uptime_formatted=$(uptime -p)
#linux_version=$(uname -r | cut -d '-' -f1)


echo "$weather_formatted  $date_formatted"

