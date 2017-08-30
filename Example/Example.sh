#!/bin/bash

#Copyright (c) 2017 ICC-Inatel Competence Center
#All rights reserved.
#This code is meant to illustrate how to write
#a code in shell script
#@author jponeticarvalho
#@date   28/08/2017

. ../../lib/sh-test-lib #To include sh-test-lib
OUTPUT="$(pwd)/output"
RESULT_FILE="${OUTPUT}/result.txt"
export RESULT_FILE
#create a path to result file, This file will
#temporarily save the test results


#This method will install test dependencies.
#    @author jponeticarvalho
#    @date   28/08/2017

install() {
    dist_name
    # shellcheck disable=SC2154

    if [ ${SKIP_INSTALL}]
    then
        return
    fi

    case "${dist}" in
        debian|ubuntu) 
            for dependecy in $*
            do
                install_deps "${depency}" "${SKIP_INSTALL}"
            done
            ;;
        fedora|centos) 
            for dependency in $*
            do
                install_deps "${dependency}" "${SKIP_INSTALL}"
            done
            ;;
        unknown) 
            warn_msg "Unsupported distro: package install skipped"
            ;;
    esac
}

#Create a directory to save results
create_out_dir "${OUTPUT}"
cd "${OUTPUT}" || exit 1

install "exepect" #List all depency of your tests.

#Performs each piece of the test.
#Each file has its specific form of execution
#Here it must be in the correct way
echo "============test1==========================="
bash ../util/teste1.sh
chech_return "Teste1" 
#The assigned text will be what will be
#presented in the final report

tclsh ../util/teste2.tcl
chech_return 'Teste2'