import type { NextPage } from 'next'
import Head from 'next/head'
import Image from 'next/image'
import Sidebar from '../components/Sidebar'

const Home: NextPage = () => {
  return (
    <div>
      <Head>
        <title>ProofOfAge NFT</title>
        <link rel="icon" href="/favicon.ico" />
      </Head>

      <main className="">
        <Sidebar/>

      
      </main>

    </div>
  )
}

export default Home
