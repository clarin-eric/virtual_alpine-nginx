#!/bin/sh -ex

apk --verbose --progress update --purge
apk add 'nginx'