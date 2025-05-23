// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

event NumberAdded(uint256);

// https://github.com/vbi-academy/solidity-basics?tab=readme-ov-file
contract SimpleStorage{
    // uint, int, bool, string, bytes, address

    uint256 public _number; //8

    struct Person{
        string name;
        uint256 number;
    }

    uint256[] public arrayOfNumber; //[22,33,44]

    uint256[5] public fixedArrayNumber;

    Person[] public dynamicArrayOfPerson;

    mapping(string name => uint256 number) public nameToNumber;

    function setNumber(uint256 newNumber) public {
        _number = newNumber;
        emit NumberAdded(_number); // khi hàm chạy hoàn tất sẽ sẽ xuất ra event để backend có thể xử lý tiếp tục như gửi mail...
    }

    function getNumber() view public returns(uint256) {
        return _number;
    }

    function pushToArrayOfNumber(uint256 newNumber) public {
        arrayOfNumber.push(newNumber);
    }

    function pushToFixedArrayOfNumber(uint256 index,uint256 newNumber) public {
        fixedArrayNumber[index] = newNumber;
    }

    function pushToDynamicArrayOfPerson(string memory name,uint256 number) public {
        dynamicArrayOfPerson.push(Person({name:name,number: number}));
    }

    function addNumberForName(string memory name,uint256 number) public{
        nameToNumber[name]=number;
    }

}