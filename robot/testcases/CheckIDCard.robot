*** Settings ***
Resource    ${CURDIR}/../resources/imports.robot

***Test Cases***
Check IDcard case1
    Check ID Card Number    1110200158292
    Result Should Be Success Of case1

Check IDcard case2
    Check ID Card Number    3110200158292
    Result Should Be Success Of case2

Check IDcard case3
    Check ID Card Number    6110200158292
    Result Should Be Success Of case3

Check IDcard case4
    Check ID Card Number    7110200158292
    Result Should Be Success Of case4

Check IDcard case5
    Check ID Card Number    8110200158292
    Result Should Be Success Of case5

Check IDcard case6
    Check ID Card Number    0110200158292
    Result Should Be Success Of case6