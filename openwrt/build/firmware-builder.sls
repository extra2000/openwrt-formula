# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import OPENWRT with context %}

openwrt-firmwarebuilder-present:
  cmd.run:
    - name: podman build -t {{ OPENWRT.image.firmwarebuilder.name }} .
    - cwd: /opt/openwrt
    - runas: {{ OPENWRT.hostuser.name }}
