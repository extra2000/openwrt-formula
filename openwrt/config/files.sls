# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import OPENWRT with context %}

/opt/openwrt:
  file.directory:
    - user: {{ OPENWRT.hostuser.name }}
    - group: {{ OPENWRT.hostuser.group }}

/opt/openwrt/src:
  file.recurse:
    - source: salt://openwrt/files/openwrt
    - user: {{ OPENWRT.hostuser.name }}
    - group: {{ OPENWRT.hostuser.group }}
    - file_mode: keep
    - show_changes: false

/opt/openwrt/Dockerfile:
  file.managed:
    - source: salt://openwrt/files/Dockerfile
    - user: {{ OPENWRT.hostuser.name }}
    - group: {{ OPENWRT.hostuser.group }}
