// const IPFS = require('ipfs-api');
// const ipfs = new IPFS({host: 'ipfs.infure.io', port: 5001, protocol: 'https'});

import { create } from 'ipfs-http-client'

const ipfs = create('https://ipfs.infura.io:5001/api/v0')

export default ipfs;