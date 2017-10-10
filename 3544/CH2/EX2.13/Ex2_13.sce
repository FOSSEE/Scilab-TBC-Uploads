// Attempts to break moidified Caesar cipher text using multiple possiblities

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
ct = "KWUM PMZM"
printf("Encrypted text:\n\t%s\n",ct)
printf("Possible Plaintext:\n\t\n")


//Decryption using library function
printf("Attempt Number\n(Value of k)\n");
for key = 1:25
    printf("\t%d. \t",key)
    printf("%s\n",decrypt_caesar_general(ct,26-key));        
end
