// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

contract Mapping {
    address public owner;

    mapping(address => uint256) public balanceOf;

    constructor() payable {
        owner = msg.sender;
    }

    function donate() public payable {
        require(msg.value > 0, "Donation must be greater than zero");
        balanceOf[msg.sender] += msg.value;
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function withdraw() public {
        require(msg.sender == owner, "Unauthorized access");
        
        uint256 amount = address(this).balance;
        require(amount > 0, "Insufficient funds");

        (bool success, ) = owner.call{value: amount}("");
        require(success, "Failed to send Ether");
    }
}
