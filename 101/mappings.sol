// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.27;

contract Mappings{
    mapping(uint=>address) public idToAddress;
    mapping(address => address) public swapPair;

    struct Student {
        uint256 id;
        uint256 score;
    }

    Student public student;

    mapping(Student => uint) public testVar;

}