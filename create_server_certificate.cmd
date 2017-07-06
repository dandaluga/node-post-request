Create a 2048 bit, triple-DES encrypted RSA key. Store the key in server.key
openssl genrsa -des3 -out server.key 2048

Create a new certificate signing request (CSR)
openssl req -new -key server.key -out server.csr

Create a temporary, self-signed certificate for one year (-days 365)
openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt