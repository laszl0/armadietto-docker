process.umask(077);

const HOST = '0.0.0.0'
const PORT = 8000
const FILE_TREE_PATH = '/usr/src/app/data'
const SIGNUP = process.env.SIGNUP == "1" || false
const SSL_PROXY = process.env.SSL_PROXY = "1" || false

const Armadietto = require('armadietto');

store   = new Armadietto.FileTree({path: FILE_TREE_PATH}),

server  = new Armadietto({
  store:  store,
  http:   {host: HOST, port: PORT},
  allow: {signup: SIGNUP},
  https: {
    force: SSL_PROXY
  }
});

server.boot();