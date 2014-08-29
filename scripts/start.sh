#!/bin/bash
# Script invoked by "npm run" process

# Supervisor runs your program, and watches for code changes
# Intended for development pq
supervisor -i node_modules -e js,jsx server.js
