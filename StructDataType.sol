// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

contract Struct {
    productAvailable public item;

   struct productAvailable{
        uint256 id;
        string name;
        address owner;
        uint256 price;
        string category;
        uint256 createdAt;
        bool deleted;
   }

    function createProduct() public  {
        item = productAvailable(
            1,
            "Nivea",
            0x5B38Da6a701c568545dCfcB03FcB875f56beddC4,
            1 ether,
            "Body Cream",
            block.timestamp,
            false
        );
    }

}