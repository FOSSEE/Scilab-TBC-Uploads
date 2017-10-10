
//Encryption

// Move scilab to current file directory
[u,t,n] = file()
n = strcat(n)
file_name = basename(n)+fileext(n)
file_name = strcat(file_name)
ind=strindex(n,file_name)
path = part(n,1:ind-1)
chdir(path)

exec("Chapter_2.sci",-1)

pt = "Hello John"

disp("Plain-text message:")
disp(pt)

a = ascii('a')
z = ascii('z')
A = ascii('A')
Z = ascii('Z')


ct = []
for i=1:length(pt(k))
    x = ascii(part(pt(k,1),i:i))
    if x>=A & x<=Z then
        //function from dependency file
        ct(k,i) = encrypt_caesar_general(part(pt(k),i:i),1)
    elseif x>=a & x<=z then
        c = convstr(part(pt(k),i:i),'u')
        c = encrypt_caesar_general(c,1)
        c = convstr(c,'l')
        ct(k,i) = c
    else
        ct(k,i) = part(pt(k),i:i)
    end
end

ct = strcat(ct)
disp("")
disp("Cipher text")
disp(ct)
