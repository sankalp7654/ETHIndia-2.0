pragma solidity ^0.5.7;
import "./ERC20.sol";

contract LandCoin is ERC20
{ 
    string public id;
    string public ownerName;
    uint public _total;
    address public ownerAddress;
    uint8 public area;
    string public assetType;
    constructor(string memory _ownerName, string memory _id, string memory _assetType, uint8 _area, uint _noOfTokens, address _parentAddress) public
    { // Set the constructor to the same name as the contract name
        ownerName = _ownerName; // set the token name here
        id = _id; // set the Symbol here
        assetType = _assetType;
        area = _area;
        _total = _noOfTokens;
        ownerAddress = _parentAddress;    // Add the address that you will distribute tokens from here
        _balances[id][_parentAddress] = _total;
    }
}