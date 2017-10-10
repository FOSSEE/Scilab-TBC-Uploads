//Keyword matrix for the example Fig 2.18

// Move scilab to current file directory
[u,t,n] = file()
n = strcat(n)
file_name = basename(n)+fileext(n)
file_name = strcat(file_name)
ind=strindex(n,file_name)
path = part(n,1:ind-1)
chdir(path)

exec("Chapter_2.sci",-1)

key = "PLAYFAIR EXAMPLE"
printf("Keyword:\n%s\n\n",key)
printf("Matrix:\n")

//calling matrix population function from dependency file
mat = playfair_matrix(key)                  


[row,col] = size(mat)
for m=1:row
    for n=1:col
        printf("%c ",ascii(mat(m,n)))
    end
    printf("\n")
end

disp("")
