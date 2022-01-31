//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract OracleInterface {

enum VerificationResult {
        Pending,    //verification is under decision
        Validated,  //verification has met the minimum level of compliance
        Rejected    //verification hasn't met the minimum level of compliance
    }

    function verificationExists(bytes32 _verificationId) public view returns (bool); 
   
    function getVerification(bytes32 _verificationId) public view returns (
       bytes32 id,
        string memory discipline,
        string memory team,
        uint cycle,
        uint date,
        uint percentage,
        VerificationResult result);

    function testConnection() public pure returns (bool);

    function addTestData() public; 
}
