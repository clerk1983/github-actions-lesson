#!/bin/bash

rsync -v -e 'ssh -i udemy-github-actions-key.pem' ./backend/dist/index.js ubuntu@43.206.254.6:~/index.js
