#!/bin/env bash

main() {
tunnel
}

tunnel() {
echo "
   _____ _          _ _                _   _             
  / ____| |        | | |              | | (_)            
 | (___ | |__   ___| | | ___ ___ _ __ | |_ _  ___  _ __  
  \___ \| '_ \ / _ \ | |/ __/ _ \ '_ \| __| |/ _ \| '_ \ 
  ____) | | | |  __/ | | (_|  __/ |_) | |_| | (_) | | | |
 |_____/|_| |_|\___|_|_|\___\___| .__/ \__|_|\___/|_| |_|
 A shell inside a shell         | |                      
                                |_|"

shcept_main
}

shcept_main() {
echo "┌"$PWD
echo "├/"$USER
read -p "└" SHCEPT_ANSWER
case "$SHCEPT_ANSWER" in
	zhcpt-e)
		echo -e "#!/bin/bash\n# This file is important if you want to run multiple commands at once in Shellception.\n# This file gets wiped every time you edit it. To keep the contents of the file,\n# run 'zhcpt-e-k' instead to edit the file while keeping the content aswell. To run the script, type 'zhcpt-r'." > ~/zhcpt.sh
		nano ~/zhcpt.sh
		chmod +x ~/zhcpt.sh
	;;
	zhcpt-e-k)
		nano ~/zhcpt.sh
		chmod +x ~/zhcpt.sh
	;;
	zhcpt-r)
		chmod +x ~/zhcpt.sh
		bash ~/zhcpt.sh
	;;
	*)
		$SHCEPT_ANSWER || shcept_main
	;;
esac
shcept_main
}

main
