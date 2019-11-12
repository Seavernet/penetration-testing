clear
echo "    ____                 ______                   __  __            _       __                     __ "
echo "   / __ \____  ____     / ________  ___  _____   / /_/ /_  ___     | |     / ___  ____ _________  / / "
echo "  / /_/ / __ \/ __ \   / / __/ __ \/ _ \/ ___/  / __/ __ \/ _ \    | | /| / / _ \/ __ / ___//_ \ / /  "
echo " / ____/ /_/ / /_/ /  / /_/ / /_/ /  __(__  )  / /_/ / / /  __/    | |/ |/ /  __/ /_/ (__  /  __/ /   "
echo "/_/    \____/ .___/   \____/\____/\___/____/   \__/_/ /_/\___/     |__/|__/\___/\__,_/____/\___/_/    "
echo "           /_/                                                                                        "
echo "------------------------------------------------------------------------------------------------------"
echo " "
echo " What kind of script? 1-spying 2-attacking "
read choice1
if [ $choice1 = "1" ] then
	echo "which script? 1-simple arp -al 2-nmap(light) 3 nmap(heavy) 4 tcpdump"
	read spy1
	if [ $spy =  "1"] then
		clear
		arp -al
		echo "--------------------------------------------------------------------"
		echo "arp scan complete"
	else
		
	else if [ $spy =  "2"] then
        clear
        echo "target host"
        read target
        clear
        echo "starting..."
        nmap -Pn $target
        echo "done"

	else
	
	else if [ $spy =  "3"] then	
		clear
		echo "target host"
		read target
		clear
		echo "starting..."
		nmap -Pn -send-ip $target --packet-trace
	else
	
	else if [ $spy =  "4"] then
		clear
		echo "target host"
		read tcphost
		echo "is target on en0?"
		read var
		if [ var = "yes"] then
			clear
			sudo tcpdump -i var host $tcphost
			
	else
		
echo "done"
