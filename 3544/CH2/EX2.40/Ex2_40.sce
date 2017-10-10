//Example of simple columnar ransposition technique with multiple rounds

// Move scilab to current file directory
[u,t,n] = file()
n = strcat(n)
file_name = basename(n)+fileext(n)
file_name = strcat(file_name)
ind=strindex(n,file_name)
path = part(n,1:ind-1)
chdir(path)

exec("Chapter_2.sci")

pt = "Come home tomorrow"
disp("Original plaintext message:")
disp(pt)

//function from dependency file
l = length(remove_spaces(pt))
//disp(l)

rounds = 2
col_order = [4 6 1 2 5 3]
col = 6
row = l/6
    if modulo(l,6)>0 then
        row=row+1
    end

for r=1:rounds
    printf("\nRound %d:",r)

    //function from dependency file
    pt_mat = message_rectangle(pt)
    
    disp("")
    disp("Plaintext:")
    disp(pt)    
    disp("Plaintext message rectangle:")
    printf("\n")
    for i=1:col
        printf(" %d ",i)
    end
    disp(pt_mat)
    
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
    pt = ct
    disp("")
end

disp("Final ciphertext:")
disp(ct)
