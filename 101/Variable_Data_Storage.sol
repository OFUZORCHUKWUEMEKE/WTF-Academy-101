// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.27;

contract Scope {
    uint[] x = [1, 2, 3]; // 状态变量：数组 x

    uint public x = 1;
    uint public y;
    string public z;

    function fStorage() public {
        //声明一个storage的变量 xStorage，指向x。修改xStorage也会影响x
        uint[] storage xStorage = x;
        xStorage[0] = 100;
    }

    // SolidityThere are three types of variables according to their scope: state variables, local variables, and global variables.

    // 1 State Variable
    // State variables are variables whose data is stored on the chain. All functions in the contract can access them, gaswhich is very time-consuming. State variables are declared in the contract and outside the function:
    // We can change the value of a state variable in a function:
      x = 5;
    y = 2;
    z = "0xAA";

    // 2. Local 
    // Local variables are variables that are valid only during the execution of a function. After the function exits, the variables are invalid. The data of local variables is stored in memory and is not chained gas. Local variables are declared in a function:

  function bar() external pure returns(uint){
    uint xx = 1;
    uint yy = 3;
    uint zz = xx + yy;
    return(zz);
  }

  function global() external view returns(address, uint, bytes memory){
    address sender = msg.sender;
    uint blockNum = block.number;
    bytes memory data = msg.data;
    return(sender, blockNum, data);
  }

//   3. Global 
//     Global variables are variables that work in the global scope and are solidityreserved keywords.         They       can be used directly in a function without being declared:

     blockhash(uint blockNumber): ( bytes32) The hash value of a given block – only applies to the 256 most recent blocks, not including the current block.
    block.coinbase: ( address payable) The address of the miner of the current block
    block.gaslimit: ( uint) gaslimit of the current block
    block.number: ( uint) The number of the current block
    block.timestamp: ( uint) Timestamp of the current block, in seconds since the Unix epoch
    gasleft(): ( uint256) Remaining gas
    msg.data: ( bytes calldata) Complete call data
    msg.sender: ( address payable) Message sender (current caller)


    // 4. Global Variables
    // Ether 
    // SolidityThere is no decimal point in the contract, and 0decimal points are used instead to ensure the accuracy     of transactions and prevent loss of precision. The use of ether units can avoid miscalculations and make it     easier for programmers to handle currency transactions in contracts.

    function weiUnit() external pure returns(uint){
        assert(1 wei == 1e0);
        assert(1wei ==1);
        return 1 wei
    }

    function gweiUnit() external pure returns(uint){
        assert(1 gwei == 1e9);
        assert(1 gwei == 10000000000);
        assert 1 gwei;
    }

    function etherUnit() external pure returns(uint){
        assert(1 ether == 1e18);
        assert(1 ether == 1000000000000000000);
        return 1 ether;
    }


    // Time
    // You can stipulate in the contract that an operation must be completed within a week, or that an event will occur in a month. This will make the execution of the contract more accurate and will not affect the result of the contract due to technical errors. Therefore, time units Solidityare an important concept in the contract, which helps to improve the readability and maintainability of the contract.

    seconds: 1
    minutes: 60 seconds = 60
    hours: 60 minutes = 3600
    days: 24 hours = 86400
    weeks: 7 days = 604800

    function secondsUnit() external pure returns(uint) {
    assert(1 seconds == 1);
    return 1 seconds;
}

function minutesUnit() external pure returns(uint) {
    assert(1 minutes == 60);
    assert(1 minutes == 60 seconds);
    return 1 minutes;
}

function hoursUnit() external pure returns(uint) {
    assert(1 hours == 3600);
    assert(1 hours == 60 minutes);
    return 1 hours;
}

function daysUnit() external pure returns(uint) {
    assert(1 days == 86400);
    assert(1 days == 24 hours);
    return 1 days;
}
}
