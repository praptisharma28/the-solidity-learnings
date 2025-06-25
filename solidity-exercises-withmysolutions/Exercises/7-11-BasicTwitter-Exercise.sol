// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// 1️⃣ Create a Twitter Contract 
// 2️⃣ Create a mapping between user and tweet 
// 3️⃣ Add function to create a tweet and save it in mapping
// 4️⃣ Create a function to get Tweet 
// 5️⃣ Add array of tweets 

contract Twitter {
    uint16 constant MAX_TWEET_LENGTH = 200;
    struct Tweet{
        address author;
        string content;
        uint256 timestamp;
        uint256 likes;
    }
    mapping(address => Tweet[]) public tweets;
    // mapping(address => string[]) public tweets;
    function createTweet(string memory _tweet) public{
        require(bytes(_tweet).length <= MAX_TWEET_LENGTH, "Tweet is too long, bro!");
        Tweet memory newTweet = Tweet({
            author: msg.sender,
            content: _tweet,
            timestamp: block.timestamp,
            likes: 0
        });
        tweets[msg.sender].push(newTweet);
    }
    // function createTweet(string memory _tweet) public {
    //     tweets[msg.sender].push(_tweet);
    // }
    function getTweet(uint _i) public view returns (Tweet memory) {
        return tweets[msg.sender][_i];
    }
    function getAllTweets(address _owner) public view returns (Tweet[] memory){
        return tweets[_owner];
    }
    // function getTweet(address _owner, uint _i) public view returns (string memory) {
    //     return tweets[_owner][_i];
    // }
    // function getAllTweets(address _owner) public view returns (string[] memory){
    //     return tweets[_owner];
    // }
}