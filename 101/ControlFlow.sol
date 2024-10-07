// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.27;

contract ControlFlow {
    uint public sum = 0;
    function IfelseTest(uint256 _number) public pure returns(bool){
        if(_number==0){
            return(true); 
        }else{
            return(false);
        }
    }

    function forLoopTest() public pure returns(uint256){
        for(uint i =0; i<10; i++){
            sum+=i;
        }
        return(sum);
    }

    function whileTest() public pure returns(uint256){
        uint sum = 0;
        uint i = 0 ;
        while(i <10){
            sum+=i;
            i++;
        }
        return(sum);
    }

    function ternaryTest(uint256 x, uint256 y) public pure returns(uint256){
    // return the max of x and y
    return x >= y ? x: y; 
    }
}