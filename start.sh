if [ $MODE == "server" ]; then
    echo running frp server...
    /var/frp/frps -c /var/frp/config/frps.ini
else
    echo running frp client...
    /var/frp/frpc -c /var/frp/config/frpc.ini
fi
