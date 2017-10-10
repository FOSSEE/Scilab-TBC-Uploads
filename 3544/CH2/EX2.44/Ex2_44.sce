
//Decryption

// Move scilab to current file directory
[u,t,n] = file()
n = strcat(n)
file_name = basename(n)+fileext(n)
file_name = strcat(file_name)
ind=strindex(n,file_name)
path = part(n,1:ind-1)
chdir(path)

exec("Chapter_2.sci",-1)

pt = "Ifmmp Kpio"

disp("Plain-text message:")
disp(pt)

a = ascii('a')
z = ascii('z')
A = ascii('A')
Z = ascii('Z')


ct = []
for i=1:length(pt)
    x = ascii(part(pt(1,1),i:i))
    if x>=A & x<=Z then
        //function from dependency file
        ct(1,i) = decrypt_caesar_general(part(pt,i:i),1)
    elseif x>=a & x<=z then
        c = convstr(part(pt,i:i),'u')
        c = decrypt_caesar_general(c,1)
        c = convstr(c,'l')
        ct(1,i) = c
    else
        ct(1,i) = part(pt,i:i)
    end
end

ct = strcat(ct)
disp("")
disp("Cipher text")
disp(ct)
