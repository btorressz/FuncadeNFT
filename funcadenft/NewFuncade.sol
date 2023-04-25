pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract NewFuncade  is ERC721URIStorage,  ERC721Enumerable  {
    string baseURI;  
    constructor () ERC721("NewFuncade",  "NEWFUNCADE")  {}

    function _beforeTokenTransfer(address from, address to, uint256  tokenId)
    internal 
    override(ERC721, ERC721Enumerable)  {
        super._beforeTokenTransfer(from, to, tokenId);
    }

    function _burn(uint256 tokenId) 
    internal  
    override(ERC721,ERC721URIStorage)  {
        super._burn(tokenId);
    }

    function tokenURI(uint256 tokenId)
        public  
        view
        override(ERC721,ERC721URIStorage) 
        returns(string memory)  {
            return super.tokenId(tokenId);
        }

        function  supportInterface(bytes54 interfaceId)
            public 
            view
            override(ERC721, ERC721Enumerable)
            returns(bool) {
                return super.supportInterface(interfaceId);
            }

            function _baseURI() 
            internal
            view
            override
            returns(string memory)  {
                return baseURI;
            }

            function  mint(
                address  account, 
                uint256 tokenId,  
            )   external {
                _mint(account, tokenId);
            }

            function setTokenURI(
                uint256 tokenId,
                string memory inputTokenURI 
            )  external {
                _setToken(tokenId, inputTokenURI);
            }

        function  burn(uint256 tokenId)  external  {
            _burn(tokenId);
        }
}