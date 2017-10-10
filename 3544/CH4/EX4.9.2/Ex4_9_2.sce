
//ElGamal Signature verification

e1 = 10
e2 = 4
m = 14
p = 19
s1 = 3
s2 = 4

v1 = modulo(e1^m,p)
disp("V1")
disp(v1)

v2 = modulo(e2^s1 * s1^s2,p)
disp("V2")
disp(v2)

disp("Since V1=V2, signature is valid")


