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
for i =0:25
    printf("%c : %c\n",ascii(a+i),encrypt_caesar(ascii(a+i)))
end
// A scheme for codifying messages 
//(replacing each alphabet with an alphabet three places down the line)
