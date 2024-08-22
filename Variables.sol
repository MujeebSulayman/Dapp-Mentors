// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Variables {
    string public fullName;
    uint256 public age;
    string public gender;
    address public id;
    uint256 public regsiteredAt;

    constructor(string memory _gender) {
        uint256 _age = 23;
        age = _age;

        gender = _gender;
        id = msg.sender;
        regsiteredAt = block.timestamp;
    }
}
