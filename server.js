const http = require('http');
const port = process.env.PORT || 3000;
const commit = process.env.MRBAS_TEST_MARKER || 'v5-tmpfs';
http.createServer((req, res) => {
  if (req.url === '/' || req.url === '/health') {
    res.writeHead(200, { 'Content-Type': 'text/plain' });
    res.end(`mrbas-m4-webtest ${commit}\n`);
  } else {
    res.writeHead(404); res.end();
  }
}).listen(port, () => console.log(`listening on ${port}`));
