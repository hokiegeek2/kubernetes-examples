#!/bin/bash

nohup kubectl proxy --address=$1 --accept-hosts '.*' &
