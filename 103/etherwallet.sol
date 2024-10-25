// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.27;


contract EtherWallet{
    address payable public owner;

    constructor(){
        owner = payable(msg.sender);
    }

    recieve() external payable{}

    function withdraw(uint256 amount) external{
        require(msg.sender==owner, "Caller is not owner");

        payable(msg.sender).transfer(amount);
    }

    function getBalance() external view returns(uint256){
        return address(this).balance;
    }
}