IPADDR=$(echo "${SSH_CONNECTION}" | awk '{print $3}')
{
clear
}
menu()
{
	clear
	echo "=========================================="
	echo "Наш сайт www.hakercraft.ru"
	echo "Наша группа в вк www.vk.com/hakercraft2077"
	echo "=========================================="
	echo "Настройка VDS под сервер minecraft:pe 1.1.x (amd64)"
	echo "- 1 - Устоновить сервер полностью"
	echo "- 2 - Удалить толка сервер"
	echo "- 3 - Переустановить сервер"
	echo "- 4 - Обновить vds"
	echo "- 5 - Устоновить толка сервер"
	echo "- 6 - Устоновить толка автозапуск"
	echo "- 7 - Удалить толка автозапуск"
	echo "- 8 - Удалить всё автозапуск и сервер"
	echo "- 9 - Обновить скрипт автоустановки"
	echo "- 0 - Выход"
	read -p "Пожалуйста, введите пункт меню: " case
	case $case in
		1) cd /home/ && mkdir srv && cd /home/srv/ && wget "https://hakercraft.ru/srv/hakercraft.ru.tar.gz" && tar -xvf hakercraft.ru.tar.gz && chmod 777 /home/srv/start.sh && chmod 777 /home/srv/bin/php7/bin/php && rm /home/srv/hakercraft.ru.tar.gz && cd /root && cd /etc/ && wget "https://hakercraft.ru/srv/rc.local" && chmod +x /etc/rc.local && cd /etc/systemd/system/ && wget "https://hakercraft.ru/srv/rc-local.service" && systemctl enable rc-local && systemctl start rc-local;; 
		2) rm -R /home/srv;;
		3) rm -R /home/srv && rm -R /etc/rc.local && rm -R /etc/systemd/system/rc-local.service && cd /home/ && mkdir srv && cd /home/srv/ && wget "https://hakercraft.ru/srv/hakercraft.ru.tar.gz" && tar -xvf hakercraft.ru.tar.gz && chmod 777 /home/srv/start.sh && chmod 777 /home/srv/bin/php7/bin/php && rm /home/srv/hakercraft.ru.tar.gz && cd /root && cd /etc/ && wget "https://hakercraft.ru/srv/rc.local" && chmod +x /etc/rc.local && cd /etc/systemd/system/ && wget "https://hakercraft.ru/srv/rc-local.service" && systemctl enable rc-local && systemctl start rc-local;;
		4) apt-get update && apt-get upgrade;;
		5) cd /home/ && mkdir srv && cd /home/srv/ && wget "https://hakercraft.ru/srv/hakercraft.ru.tar.gz" && tar -xvf hakercraft.ru.tar.gz && chmod 777 /home/srv/start.sh && chmod 777 /home/srv/bin/php7/bin/php && rm /home/srv/hakercraft.ru.tar.gz;;
		6) cd /etc/ && wget "https://hakercraft.ru/srv/rc.local" && chmod +x /etc/rc.local && cd /etc/systemd/system/ && wget "https://hakercraft.ru/srv/rc-local.service" && systemctl enable rc-local && systemctl start rc-local;;
		7) rm -R /etc/rc.local && rm -R /etc/systemd/system/rc-local.service;;
		8) rm -R /home/srv && rm -R /etc/rc.local && rm -R /etc/systemd/system/rc-local.service;;
		9) apt-get update && apt-get upgrade && wget https://github.com/haker20SZs/minecraft_server/blob/main/README.md
	esac
}
menu

