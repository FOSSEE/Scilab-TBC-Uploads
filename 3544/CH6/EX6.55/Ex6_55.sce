
//Base-64 encoding mapping table

disp("Base-64 encoding mapping table")

[u,t,n] = file()
n = strcat(n)
file_name = basename(n)+fileext(n)
file_name = strcat(file_name)
ind=strindex(n,file_name)
path = part(n,1:ind-1)
chdir(path)

//Get function to create encoding table
exec("Chapter_6.sci",-1)

enc = encoding_table()

for i=0:63
    printf("%d - %c\n",i,ascii(enc(i+1)))
end
