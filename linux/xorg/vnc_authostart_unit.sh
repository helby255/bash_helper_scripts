[Unit]
Description=Remote desktop service (VNC)
#put it on /etc/systemd/system/x11vnc@.service
#after type systemctl daemon-reload systemctl enable x11vnc@$DISPLAY
After=display-manager.service

[Service]
Type=simple
User=lightdm
#Choose your VNC server
#ExecStart=/usr/bin/x11vnc -display $DISPLAY
Restart=always
RestartSec=3

[Install]
WantedBy=graphical.target