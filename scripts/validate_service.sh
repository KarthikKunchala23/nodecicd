#!/bin/bash
if curl -f http://localhost:8080; then
    echo "Service is running."
else
    echo "Service is not running." && exit 1
fi
