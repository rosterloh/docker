#!/bin/bash

docker run -i -d -p 8081:80 -p 2244:22 -privileged rosterloh/phabricator
