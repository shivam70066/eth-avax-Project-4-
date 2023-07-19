// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Points is ERC20, ERC20Burnable, Ownable {
    address public contractOwner;
    constructor() ERC20("Degen", "DGN") {
        _mint(msg.sender, 300 * 10 ** decimals());
        contractOwner = msg.sender;

        //items
        items.push("gun");
        item["gun"] = 200;
        items.push("shirt");
        item["shirt"] = 100;
        items.push("car");
        item["car"] = 300;
    }
    //Items
    string[] items;
    mapping (string => uint) public item;
    event Redeem(address buyer,uint amount);


    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
    
    function addNewItem(string memory itemName, uint itemValue) external onlyOwner {
        items.push(itemName);
        item[itemName] = itemValue;
    }

    function getItems() public view returns (string[] memory) {
        return items;
    }

    function noOfItems() public view returns (uint) {
        return items.length;
    }

    function redeemItem(string memory choice) public  {
        uint valueOfItem = item[choice];
        require(balanceOf(msg.sender)>= valueOfItem, "You don't have not sufficient funds to redeem this item");
        burn(valueOfItem);
        emit Redeem(msg.sender, valueOfItem);
        
    }
}