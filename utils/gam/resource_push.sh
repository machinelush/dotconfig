#!/bin/bash
INPUT=./users.csv
OLDIFS=$IFS
IFS=,

[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }

while read email fname lname OU 
do
	#Grants read permissions, then displays the calendar
	python ./gam.py calendar valleyyouthhouse.org_08ch88pfpfgk7foafvld3rs1i4@group.calendar.google.com read $email
	#python ./gam.py user $email add  valleyyouthhouse.org_08ch88pfpfgk7foafvld3rs1i4@group.calendar.google.com	
	#Grants read permissions,then displays the calendar
	python ./gam.py calendar valleyyouthhouse.org_bdogenljm9hfkfsuuq3iglha00@group.calendar.google.com read $email
	#python ./gam.py user $email add valleyyouthhouse.org_bdogenljm9hfkfsuuq3iglha00@group.calendar.google.com	
	#Grants read permissions,then displays the calendar
	#python ./gam.py calendar @resource.calendar.google.com read $email
	#python ./gam.py user $email add calendar @resource.calendar.google.com 
	echo "$fname added"
done < $INPUT
IFS=$OLDIFS
