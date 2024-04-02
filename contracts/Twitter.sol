//SPDX-License-Identifier:MIT


pragma solidity ^ 0.8.18;

contract Twitter{
    mapping (address => string []) public tweets; // key value connection  here address is key and string is value  hence tweets is a mapping varable between wallet address and string 
    function createTweet(string memory _tweet)public{
        tweets[msg.sender].push(_tweet);
    }

    function getTweet(address _owner,uint _i) public view returns (string memory) {
        return tweets[_owner][_i];
    }

    function getAllTweets(address _owner) public  view returns(string [] memory){
        return tweets[_owner];

    }
 }

//  contract Twitters{
//     mapping (address => string ) public tweets;

//     function createTweet(address _owner,string memory _tweet) public {
//         tweets[_owner]=_tweet;
//     }
//     function getTweets(address _owner)public  view  returns (string memory){
//         return tweets[_owner];

//     }

//  }