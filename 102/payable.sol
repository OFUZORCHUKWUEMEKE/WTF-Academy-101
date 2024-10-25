// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.27;

contract Payable {
    address payable public owner;

    constructor() payable {
        owner = payable(msg.sender);
    }

    // Function to deposit Ether injto this contract.
    // Call this function along with some Ether.
    // The balance of this contract will be automatically updated.
    function deposit() public payable {}

    // Call this function along with some Ether.
    // The function will throw an error since this function is not payable.
    function notPayable() public {}

    // function to withdraw all ether from this contract
    function withdraw() public{
         // get the amount of Ether stored in this contract
        uint256 amount = address(this).balance;

        // send all Ether to owner

        (bool success , ) = owner.call{value:amount}("");
        require(success,"failed to send Ether");
    }

    function transfer(address payable _to,uint256 _amount)public{
        (bool success) = _to.call{value:_amount}("");
        require(success,"Failed to sedn Ether");
    }
}
