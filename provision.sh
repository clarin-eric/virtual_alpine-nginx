#!/bin/sh -ex

apk --verbose --progress update --purge
apk add 'nginx' 'rsync'
rsync --archive --cvs-exclude --human-readable --itemize-changes --delete '/etc/CLARIN_TLS/' '/vol/etc-CLARIN_TLS--infra/'
rsync --archive --cvs-exclude --human-readable --itemize-changes --delete '/media/etc/nginx/' '/etc/nginx/'
rsync --archive --cvs-exclude --human-readable --itemize-changes --delete '/srv/www/infra.clarin.eu/' '/vol/srv-www-infra.clarin.eu--infra/'
apk del 'rsync'
