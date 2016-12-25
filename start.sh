if [ $MODE == "server" ]; then
    /var/frp/frps -c /var/frp/config/frps.ini
else
    /var/frp/frpc -c /var/frp/config/frpc.ini
fi
