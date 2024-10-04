// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.27;

contract Events{
    event Transfer(address indexed from, address indexed to, uint256 value);

    mapping(address => uint) _balances;

       // define _transfer function，execute transfer logic
    function _transfer(
        address from,
        address to,
        uint256 amount
    ) external {

        _balances[from] = 10000000; // give some initial tokens to transfer address

        _balances[from] -=  amount; // "from" address minus the number of transfer
        _balances[to] += amount; // "to" address adds the number of transfer

        // emit event
        emit Transfer(from, to, amount);
    }
}