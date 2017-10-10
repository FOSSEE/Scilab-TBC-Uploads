//Rail fence technique

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

//function from dependency file
pt = remove_spaces(pt)

ct = []
k=1

//Writing diagonally
for i=1:length(pt)
    if modulo(i,2)==0 then
        continue
    end
    ct(k,1) = part(pt,i:i)
    ct(k,2) = part(pt,i+1:i+1)
    k = k+1
end

ct = strcat(ct)
disp("")
disp("Ciphertext:")
disp(ct)
