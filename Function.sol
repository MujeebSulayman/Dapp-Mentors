// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

contract Function {
    uint256 public score;

    function getAnswer() public {
        uint256 a = 7;
        uint256 b = 3;
        uint256 ans = a + b;

        score = getRoot(ans);
    }

    function getRoot(uint256 ans) internal pure returns (uint256) {
        return ans ** 2;
    }
}