
// Move scilab to current file directory
[u,t,n] = file()
n = strcat(n)
file_name = basename(n)+fileext(n)
file_name = strcat(file_name)
ind=strindex(n,file_name)
path = part(n,1:ind-1)
chdir(path)

exec("Chapter_2.sci",-1)

pt = ["Hi Amit,",

"Hope you are doing fine. How about meeting at the train station this friday at 5 p.m. ? Please let me know if it is OK with you.",

"Regards.",

"Atul"]

disp("Plain-text message:")
disp("")
for i=1:length(length(pt))
    printf("%s\n",strcat(pt(i)))
end

ct_full = list()
a = ascii('a')
z = ascii('z')
A = ascii('A')
Z = ascii('Z')


//Encryption using encrypt_caesar funtion from depenency file
for k = 1:length(length(pt))
    ct = []
    for i=1:length(pt(k))
        x = ascii(part(pt(k,1),i:i))
        if x>=A & x<=Z then
            ct(k,i) = encrypt_caesar(part(pt(k),i:i))
        elseif x>=a & x<=z then
            c = convstr(part(pt(k),i:i),'u')
            c = encrypt_caesar(c)
            c = convstr(c,'l')
            ct(k,i) = c
        else
            ct(k,i) = part(pt(k),i:i)
        end
    end
    ct_full(k) = ct
end

disp("")
disp("Corresponding cipher-text message:")
disp("")
for i=1:length(ct_full)
    printf("%s\n",strcat(ct_full(i)))
end
