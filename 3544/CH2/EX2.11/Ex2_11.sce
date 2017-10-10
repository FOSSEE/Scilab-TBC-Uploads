// Example of breaking Caesar cipher

// Move scilab to current file directory
[u,t,n] = file()
n = strcat(n)
file_name = basename(n)+fileext(n)
file_name = strcat(file_name)
ind=strindex(n,file_name)
path = part(n,1:ind-1)
chdir(path)

exec("Chapter_2.sci",-1)

key = 3
a = ascii('A')
ct = "L ORYH BRX"
printf("Encrypted text:\n\t%s\n",ct)

//Decryption using function from dependency file
printf("Plaintext:\n\t%s",decrypt_caesar(ct))
