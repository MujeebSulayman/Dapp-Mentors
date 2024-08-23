// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

contract Payment {
    
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function withdrawTo() public view returns (bool) {
        require(owner == msg.sender , "You are not the contract owner" );
        return true;
    }
} 

contract Payer is Payment {
    constructor() {}

    function getOwner() public view returns (address)  {
        return owner;
    }
}