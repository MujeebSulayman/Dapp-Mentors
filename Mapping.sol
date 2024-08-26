// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

contract Mapping {
    address owner;

    mapping(address => uint256) public balanceOf;

    constructor() payable {
        owner = payable(msg.sender);
    }

    function donate() public payable {
        balanceOf[msg.sender] += msg.value;
    }

    function getBalance() public view returns(uint256) {
        return address(this).balance;
    }


  function withdrawal( ) public {
    uint256 amount = address(this).balance;

    (bool success, ) = owner.call{value: amount}("");
    require(success, "Failed to send");
  }
}