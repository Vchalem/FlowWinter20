#!/bin/bash

sfdx force:org:create -f config/project-scratch-def.json -a FlowsADK --setdefaultusername -d 14

#add pckg IDs to Idnum
sfdx force:package:install --package 04t1U0000066Af4 -w 20

sfdx force:package:install --package 04t1U000005ZS27 -w 20  


sfdx force:source:push -f

#sfdx assign permission sets
sfdx force:user:permset:assign -n Credit_Line_Increase_Demo

sfdx force:apex:execute -f config/create-demo-data-setup.apex

sfdx force:org:open

