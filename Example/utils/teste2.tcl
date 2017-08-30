#!/bin/expect

#Copyright (c) 2017 ICC-Inatel Competence Center
#All rights reserved.
#This code is meant to illustrate how to write
#a tcl expect test
#@author jponeticarvalho
#@date   28/08/2017

package require Expect

puts "Entre com um numero diferente de 0:"
flush stdout

expect -re 0 {
    exit 1
}

exit 0