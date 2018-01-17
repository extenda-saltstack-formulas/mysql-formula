include:
  - mysql.config

{% from "mysql/defaults.yaml" import rawmap with context %}
{%- set mysql = salt['grains.filter_by'](rawmap, grain='os', merge=salt['pillar.get']('mysql:lookup')) %}
{%- set mysql_version = salt['pillar.get']('mysql:version', 'latest') %}

mysql:
  pkg.installed:
    - name: {{ mysql.client }}
    - version: {{ mysql_version }}
