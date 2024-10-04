// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.27;

// constructor is a special function, which will automatically run once during contract deployment. Each contract can have one constructor. It can be used to initialize parameters of a contract, such as an owner address:

contract Constructor {
    address owner; // define owner variable

    modifier onlyOwner() {
        require(msg.sender == owner); // check whether caller is address of owner
        _; // execute the function body
    }

    function changeOwner(address _newOwner) external onlyOwner {
        owner = _newOwner; // only owner address can run this function and change owner
    }

    // constructor
    constructor() {
        owner = msg.sender; //  set owner to the deployer address
    }

    // modifier is similar to decorator in object-oriented programming, which is used to declare dedicated properties of functions and reduce code redundancy. modifier is Iron Man Armor for functions: the function with modifier will have some magic properties. The popular use case of modifier is restrict the access of functions.
}
