// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24; //Solidity version

contract SimpleStorage {
    uint256 public myFavoriteNumber;

    uint256 [] listOfFavoriteNumbers;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping (string => uint256) public nameToFavoriteNumber;

    function  store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber ;
    }

    function retreive() public view returns(uint256){
        return myFavoriteNumber ;
    }

    function addPerson (string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push( Person(_favoriteNumber ,_name ));
        nameToFavoriteNumber [_name] = _favoriteNumber;
    }
}

