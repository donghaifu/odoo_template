Linux使用crontab执行计划任务
把备份的文件夹给与postgres用户访问权限
@daily su postgres -c pg_dumpall | gzip > /home/odoo/project/backups/postgresql-$(date +%u).dump.gz
@daily tar czf /home/odoo/project/backups/odoo-filestore-$(date +%u).tgz  /home/odoo/project/filestore
