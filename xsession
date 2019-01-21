## Set screen brightness to 10
exec `xbacklight -set 14`

# Status bar loop
while true; do
	cpu_cor1=$(sensors | grep 'Core 0' | awk '{print $3}')
	cpu_cor2=$(sensors | grep 'Core 1' | awk '{print $3}')
	fan_sped=$(sensors | grep fan | awk '{print $2,$3}')
#	eth0_ipd=$(ifconfig eth0 | grep 'inet ' | awk '{print $2}'
#	wlan_ipd=$(ifconfig wlan0 | grep 'inet ' | awk '{print $2}'
#	inet_ipd=$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1 -d'/')
	load_avg=$(uptime | awk '{print $9,$10,$11}')
	mem_full=$(free -m | grep Mem | awk '{print $2}')
	mem_aval=$(free -m | grep Mem | awk '{print $7}')
	mem_cach=$(free -m | grep Mem | awk '{print $6}')
#	xsetroot -name "CPU[$cpu_cor1::$cpu_cor2] | FAN[$fan_sped] | MEM[$mem_aval/$mem_cach/$mem_full] | NET[Eth:: $eth0_ipd  WiFi:: $wlan_ipd] | LOAD[$load_avg] | DATE[$(date +"%a %F %I:%M %p"])"
	xsetroot -name "CPU[$cpu_cor1::$cpu_cor2] | MEM[$mem_aval/$mem_cach/$mem_full] | NET[$inet_ipd] | LOAD[$load_avg] | DATE[$(date +"%a %V %F %I:%M %p"])"
	sleep 1	# Update every minute
done &

## Start dwm
exec dwm
