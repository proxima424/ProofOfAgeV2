import React from 'react'

function Sidebar() {
  return (
    <div className='text-gray-500 p-5 text-sm border-r border-gray-900'>
        <div className="space-y-4">
            <button className='flex hover:text-white' >Mint your ProofOfAge NFT</button>
            <button className='flex hover:text-white' >ProofOfAge NFT Stats</button>
            <button className='flex hover:text-white' >Connect Metamask</button>    
        </div>
    </div>
  )
}

export default Sidebar
