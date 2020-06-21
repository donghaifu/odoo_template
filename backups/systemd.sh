# 适用root权限
# 1，创建/lib/systemd/system/odoo.service的文件并添加如下内容
# 2，注册该服务 # systemctl enable odoo.service
# 3，启动服务 # service odoo start
# 4，停止服务 # service odoo stop
# 注意替换project为自己的项目名

[Unit]
Description=Odoo 12.0
After=postgresql.service
 
[Service]
Type=simple
User=odoo
Group=odoo
WorkingDirectory=/home/odoo/project
ExecStart=/home/odoo/project/bin/odoo.sh
 
[Install]
WantedBy=multi-user.target
