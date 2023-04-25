pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract Funcade is  ERC721URIStorage {
    string baseURI; 

    constructor() ERC721("Funcade", "FUNCADE") {

        function mint(
            address account,  
            uint256  tokenId,

        ) external  {
            mint(account,tokenId);
        }

        function setTokenURI(
            uint256  tokenId, 
            string  memory tokenURI  
        ) external  {
            _setToken(tokenId, tokenURI);
        }
        
        function setBaseURI(string memory  baseURI_) external {
            baseURI = baseURI_;  
        }
        
        function   _baseURI internal view override returns (string memory)  {
            return  baseURI;
        }
    }
}