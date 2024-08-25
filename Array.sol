// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

contract Array {
    string[] names = ['Endrick', 'Shola', 'Nife', 'Mujeeb', 'Ibraheem'];

    function checkLength() public view returns(uint256)  {
        return names.length;
    }

    function arrayPush( string memory _name ) public returns(bool) {
        names.push(_name);
        return true;
    }

    function arrayPop() public returns(bool) {
        names.pop();
        return true;
    }

    function nameList() public view returns(string[] memory) {
        return names;
    }
}