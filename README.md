# dhge-dkan-demo

A Demo of the open data platform DEKAN for a school it-consulting projekt.

# DKAN demo architektur

### traefik

[Container](https://hub.docker.com/_/traefik) routes your web req. to `dkan-web` container. It mounts `/var/run/docker.sock` to `/var/run/docker.sock` to do its job. You need to be aware that container compromise leads to an easy host system compromise. This container is not present in the above mentioned docker-compose file.

# Resources

- [DKAN Documentation Official](https://dkan.readthedocs.io/en/latest/installation/basic.html)
- [DKAN Documentation Beta](https://dkan-starter.readthedocs.io/en/latest/introduction/index.html)
- [DKAN-CLI Documentation](https://getdkan.github.io/dkan-tools/#newproject/)

# License

["GNU General Public License, version 2 or any later version"](https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html)
