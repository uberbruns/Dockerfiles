#!/bin/bash

cp /root/config/config.py /homematicip/homematicip-rest-api/
python /homematicip/homematicip-rest-api/homematicip_cli.py $@
