# dhge-dkan-demo

A Demo/ Test setup of the open data platform DEKAN for a school it-consulting projekt with containers.

# DKAN demo architektur

## Architektur

Container connections are visualised in `architecture.svg`.

## Container descriptions

### frontend

Custom [Nginx container](https://hub.docker.com/_/nginx) that hosts the react.js frontend application.

### dkan-backend

Custom [Dupral container](https://hub.docker.com/_/drupal) that runs the DKAN. There is no good Documentation on how to use the [official Docker image](https://github.com/GetDKAN/dkan-web) at the moment.

### db

[Mariadb container](https://hub.docker.com/_/mariadb) that runs the durpal database.

### demo-files

[Nginx container](https://hub.docker.com/_/nginx) that hosts demo files to link to.

### dkan-traefik-router

[Traefik container](https://hub.docker.com/_/traefik) that routes the web requests to the right containers.

## Problems with current solution

### Frontend / DKAN routing inefficient

The frontend and the DKAN backend are run in different containers but both store files in root path. This makes routing hard because you dont allways know which requestet path belongs in which container. This Problem was "solved" by definding all possible frontend path in the traefik configuration. A better solution would be to run the backend on a different domain or port or in a subpath.

### Some functions dont work

Some Dupral functions eg. runngin cron manually dont work. They crash with an php error.

### DKAN harvest dashboard / UI not aviable

There is no option to access the harvest dashboard or edit/ add harvests with the dupral UI. This also not possible with the dkan container created with drush.

# Useful resources

- [DKAN Documentation Official](https://dkan.readthedocs.io/en/latest/installation/basic.html)
- [DKAN Documentation Beta](https://dkan-starter.readthedocs.io/en/latest/introduction/index.html)
- [DKAN-CLI Documentation](https://getdkan.github.io/dkan-tools/#newproject/)

# License

["GNU General Public License, version 2 or any later version"](https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html)
