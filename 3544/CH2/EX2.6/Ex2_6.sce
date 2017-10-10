// Substitutition scheme of Caesar cipher

// Move scilab to current file directory
[u,t,n] = file()
n = strcat(n)
file_name = basename(n)+fileext(n)
file_name = strcat(file_name)
ind=strindex(n,file_name)
path = part(n,1:ind-1)
chdir(path)

exec("Chapter_2.sci",-1)

a = ascii('A')
pt = "I LOVE YOU"
printf("Plaintext:\n\t%s\n",pt)

//Encryption using encrypt_caesar function from dependency file
printf("Encrypted text:\n\t%s",encrypt_caesar(pt))

// A scheme for codifying messages 
//(replacing each alphabet with an alphabet three places down the line)
