
//ElGamal Key Encryption

r = 4 
pt = 7
e1 = 2
e2 = modulo(e1^d,p)

c1 = modulo(e1^r,p)
c2 = modulo(pt*e2^r,p)

disp("Cipher text")
printf("(%d,%d)",c1,c2)
