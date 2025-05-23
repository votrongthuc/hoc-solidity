// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

// https://github.com/vbi-academy/solidity-basics?tab=readme-ov-file
contract SimpleStorage{
    // uint, int, bool, string, bytes, address

    uint256 number; //8

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function getNumber() view public returns(uint256) {
        return number;
    }
}