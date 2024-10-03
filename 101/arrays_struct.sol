// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.27;

// Array ( Array) is Soliditya commonly used variable type used to store a set of data (integers, bytes, addresses, etc.). Arrays are divided into fixed-length arrays and variable-length arrays:

contract ArraysStruct {
    // Fixed-length array: The length of the array is specified during declaration. T[k]It is declared in the format of , where Tis the element type and kis the length, for example:

    uint8[8] array1;
    bytes1[5] array2;
    address[100] array3;

    // Variable-length array (dynamic array): The length of the array is not specified when it is declared. T[]It is declared in the format of , where Tis the type of the element, for example:

    // 可变长度 Array
    uint[] array4;
    bytes1[] array5;
    address[] array6;
    bytes array7;
    uint[] memory array8 = new uint[](5);
    bytes memory array9 = new bytes(9);

    // Structs 

    struct Student{
        uint256 id;
        uint256 score;
    }
    Student student; 

    function initStudent() external{
        Student storage _student = student;
        _student.id = 11;
        _student.score = 100;
    }

    function initStudent2() external{
        student.id = 1;
        student.score = 80;
    }

    function initStudent2() external{
        student = Student(3,90);
    }

    function initSudent4() external{
        student1 =  Student({id:4,score:60});
    }

}
