#!/bin/sh -ex

apk --verbose --progress update --purge # --update-cache
apk add 'nginx'