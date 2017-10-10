
//ElGamal Signature

// Move scilab to current file directory
[u,t,n] = file()
n = strcat(n)
file_name = basename(n)+fileext(n)
file_name = strcat(file_name)
ind=strindex(n,file_name)
path = part(n,1:ind-1)
chdir(path)

exec("Chapter_4.sci",-1)

e1 = 10
e2 = 4
p = 19
m = 14      //original message
d = 16
r = 5       //random number selected by sender

r_inv = mod_inv(r,p-1)      //inverse of r modulo (p-1)

s1 = modulo(e1^r,p)

temp = (m-d*s1)*r_inv
while temp<0                    //calculate modulus (p-1) for negative values
    temp = temp+p-1
end
s2 = modulo(temp,p-1)

printf("The signature is: (%d,%d)",s1,s2)
