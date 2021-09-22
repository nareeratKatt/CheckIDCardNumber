*** Keywords ***
Check ID Card Number
    [arguments]     ${IDcardnumber}
    Create Session  checkIDcardSession   ${COMMON.base_url}
    ${body}=    Create Dictionary   IDcard=${IDcardnumber}
    ${header}=  Create Dictionary   Content-Type=application/json
    ${response}=    POST On Session     checkIDcardSession      /v1/checknumber     json=${body}    headers=${header}
    ${status_code}=     convert to string   ${response.status_code}
    ${res_body}=    convert to string     ${response.content}
    Set Test Variable       ${status_code}
    Set Test Variable       ${res_body}

Result Should Be Success Of case1
    should be equal     ${status_code}     200
    should contain  ${res_body}     thai people/nationality thai

Result Should Be Success Of case2
    should be equal     ${status_code}     200
    should contain  ${res_body}     thai people/alien

Result Should Be Success Of case3
    should be equal     ${status_code}     200
    should contain  ${res_body}     alien

Result Should Be Success Of case4
    should be equal     ${status_code}     200
    should contain  ${res_body}     child of alien person

Result Should Be Success Of case5
    should be equal     ${status_code}     200
    should contain  ${res_body}     alien a thai person

Result Should Be Success Of case6
    should be equal     ${status_code}     200
    should contain  ${res_body}     non-registered person