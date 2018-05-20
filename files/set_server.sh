#!/bin/bash

if [ -z $TZ ]; then TZ="Europe/Ljubljana"; fi

echo $TZ > /etc/timezone && \
    rm /etc/localtime && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata
    