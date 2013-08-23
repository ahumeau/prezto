#
# Defines aliases.
#
# Authors:
#   Antoine Humeau <humeau.antoine@gmail.com>
#

# shortcuts
alias gom='cd /srv/www/minilogs.com/minilogs'
alias aaa='export VIRTUAL_ENV_DISABLE_PROMPT='1' && source /srv/www/minilogs.com/bin/activate'
alias supd='supervisord -c /etc/supervisord.conf'
alias supctl='supervisorctl'
alias pipinstall='pip --environment=/srv/www/minilogs.com/ install -r /srv/www/minilogs.com/minilogs/requirements.txt'

# supervisor
alias rs='supervisorctl restart minilogs.com'
alias rscl='supervisorctl restart celery'

# init.d
rsnginx='/etc/init.d/nginx restart'
rspgsql='/etc/init.d/postgresql restart'

# fabric
alias depchr='fab deploy_chrome_ext:app=cave,destdir="/host_sharing/chrome_extension"'

# manage.py aliases
alias pyman='python /srv/www/minilogs.com/minilogs/manage.py'
alias pyshell='python /srv/www/minilogs.com/minilogs/manage.py shell'
alias dbshell='python /srv/www/minilogs.com/minilogs/manage.py dbshell'
alias mkmsg='python /srv/www/minilogs.com/minilogs/manage.py makemessages -a'
alias mkmsgjs='python /srv/www/minilogs.com/minilogs/manage.py makemessages -a --domain=djangojs --ignore=static --ignore=templates/static/jsi18n'
alias cplmsg='python /srv/www/minilogs.com/minilogs/manage.py compilemessages'
alias cs='python /srv/www/minilogs.com/minilogs/manage.py collectstatic --noinput'

#logs
alias taill='tail -n 20'
alias celog='taill /var/log/celeryd.log'
alias dblog='taill /var/log/postgresql/postgresql-9.1-main.log'
alias gulog='taill /srv/www/minilogs.com/logs/access.log'
alias guerlog='taill /srv/www/minilogs.com/logs/error.log'
