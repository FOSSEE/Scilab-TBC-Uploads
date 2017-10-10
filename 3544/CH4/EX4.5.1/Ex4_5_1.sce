
//ElGamal Key Generation

p = 11
e1 = 2
d = 3

e2 = modulo(e1^d,p)

disp("Public key:")
printf("(%d,%d,%d)",e1,e2,p)
