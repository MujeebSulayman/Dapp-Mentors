// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

contract Transactions {
    address owner;
    address balance;
    address account;

    constructor() payable  {
        owner = payable( msg.sender);
    }

    //Get Account and Balance

    function GetAccount() public view returns (address) {
        return address(this);
    }

    function getBalance() public view returns(uint256) {
        return address(this).balance;
    }


    function sendEther(uint _amount, address payable _to) public  {
        (bool success, ) = _to.call{value: _amount}("");
        require(success, "Failed to send Ether");
    }

    function withdrawal( ) public {
    uint256 amount = address(this).balance;

    (bool success, ) = owner.call{value: amount}("");
    require(success, "Failed to send");
  }


}