// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

contract Variables {
    address public id;
    string public fullName;
    uint256 public age;
    uint256 public phoneNumber;
    string public gender;

    constructor( string memory _gender, string memory _fullName ) {
        uint256 _age = 23; 
        age = _age;

        gender = _gender;
        id = msg.sender;
        uint _phoneNumber = 7053250527;
        phoneNumber = _phoneNumber;

        
        _fullName = 'Mujeeb Sulayman';
        fullName = _fullName;
    }
}