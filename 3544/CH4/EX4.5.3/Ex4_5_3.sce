
//ElGamal Key Decryption

// Move scilab to current file directory
[u,t,n] = file()
n = strcat(n)
file_name = basename(n)+fileext(n)
file_name = strcat(file_name)
ind=strindex(n,file_name)
path = part(n,1:ind-1)
chdir(path)

exec("Chapter_4.sci",-1)

p = 11
r = 4 
pt = 7
d = 3
e1 = 2
e2 = modulo(e1^d,p)

c1 = modulo(e1^r,p)
c2 = modulo(pt*e2^r,p)

x =c1^d
x_inv = mod_inv(x,p)

pt = modulo(c2*x_inv,p)
disp("Original plaintext")
disp(pt)
