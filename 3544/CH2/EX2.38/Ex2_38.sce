//Example of simple columnar ransposition technique

// Move scilab to current file directory
[u,t,n] = file()
n = strcat(n)
file_name = basename(n)+fileext(n)
file_name = strcat(file_name)
ind=strindex(n,file_name)
path = part(n,1:ind-1)
chdir(path)

exec("Chapter_2.sci",-1)

disp("Original plaintext message:")
pt = "Come home tomorrow"
disp(pt)
disp("")

//function from dependency file
pt = remove_spaces(pt)              

l = length(pt)

col = 6

row = l/6
    if modulo(l,6)>0 then
        row=row+1
    end

//Conversion of plaintext into a message table
//function from dependency file
pt_mat = message_rectangle(pt,col)

disp("Plaintext message rectangle:")
printf("\n")
for i=1:col
    printf(" %d ",i)
end
disp(pt_mat)
disp("")

//Column read order
col_order = [4 6 1 2 5 3]
disp("Column order: ")
disp(col_order)
disp("")
k=1

ct=[]
//Convert to ciphertext
for n = 1:length(col_order)
    j = col_order(n)
    for i=1:row
        pos = (i-1)*col + j
        if pos>l then
            continue
        end
        ct(k)=pt_mat(i,j)
        k=k+1
    end
end
disp("Ciphertext:")
ct = strcat(ct)
disp(ct)
