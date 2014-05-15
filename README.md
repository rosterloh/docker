# [![Docker.io](https://www.docker.io/static/img/docker-top-logo.png)](https://github.com/rosterloh/docker) docker

My docker files

## Building Dockerfiles

	$ sudo docker build -t <yourname>/<imagename> .
	
### Other Userful Scripts

	# docker-get-ip
	# Usage: docker-get-ip (name or sha)
	$ [ -n "$1" ] && docker inspect --format "{{ .NetworkSettings.IPAddress }}" $1

	# docker-get-id
	# Usage: docker-get-id (friendly-name)
	$ [ -n "$1" ] && docker inspect --format "{{ .ID }}" $1
	
	# docker-get-image
	# Usage: docker-get-image (friendly-name)
	$ [ -n "$1" ] && docker inspect --format "{{ .Image }}" $1
	
	# docker-get-state
	# Usage: docker-get-state (friendly-name)
	$ [ -n "$1" ] && docker inspect --format "{{ .State.Running }}" $1
	
## License
[The MIT License](http://opensource.org/licenses/MIT)
