// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

contract Conditional {
    mapping(address => uint256) public contributions;
    mapping(address => bool) public FirstTimer;
    mapping(address => bool) public StakeHolder;

    address owner;

    constructor() {
        owner = msg.sender;
    }

    function donate() public payable {
        if (contributions[msg.sender] == 2) {
            StakeHolder[msg.sender] = true;
            contributions[msg.sender] += 1;
        } else if (contributions[msg.sender] == 0) {
            FirstTimer[msg.sender] = true;
            contributions[msg.sender] += 1;
        } else {
            FirstTimer[msg.sender] = false;
            contributions[msg.sender] += 1;
        }
    }

    function withdraw() public {
        uint256 amount = address(this).balance;

        (bool success, ) = owner.call{value: amount}("");
        require(success, "Failed to send Ether");
    }

    function Balance() public view returns (uint256) {
        return address(this).balance;
    }
}
