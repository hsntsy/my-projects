#!/bin/bash


cat event_history.csv | grep -i "serdar" | grep -i "terminate" | grep -Eo "i-.{17}" | sort | uniq > result.txt

#this command line find that terminated instance id by serdar-user.