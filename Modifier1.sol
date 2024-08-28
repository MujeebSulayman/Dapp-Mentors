// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

contract Modifier {
    address owner;

    constructor() {
        owner = msg.sender;
    }


    modifier onLyOwner (){
        require(msg.sender == owner, "Unauthorized Access");
        _;
    }

    function withdraw() public view onLyOwner returns(address) {
        return owner;
    }
}