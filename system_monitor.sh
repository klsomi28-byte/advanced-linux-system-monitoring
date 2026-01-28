while true
do
clear
echo "advanced linux system monitor"
echo "enter Date & Time: $(date)"

echo "system uptime"  
uptime

echo "CPU usage"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU usage: " 100-$8 "%"}'

echo "memory usage"
free -h

echo "disk usage"
df -h

echo "logged-in users"
who

echo "top 5 memory consuming process"
ps -eo pid,ppid,cmd,%men,%cpu ==sort=-%men | head -n 6

echo "refreshing in 5 seconds....press CTRL+C to exit"
sleep 5
done


