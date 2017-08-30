#!/bin/bash

#Copyright (c) 2017 ICC-Inatel Competence Center
#All rights reserved.
#This code is meant to illustrate how to write
#a shell test
#@author jponeticarvalho
#@date   28/08/2017

echo "Entre com um numero diferente de 0:"
read input

if [ ${input} != "0" ]
then
    exit 0 #For lava, 0 means that the test passed
else
    exit 1 #For lava, 1 means the test failed
fi