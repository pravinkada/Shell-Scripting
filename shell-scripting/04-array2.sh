#!/bin/bash
declare -A MYARRAY
MYARRAY=([name]=pravin [age]=23)
echo "my age is ${MYARRAY[age]}"
echo "${MYARRAY[*]}"
