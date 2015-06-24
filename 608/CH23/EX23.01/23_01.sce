//Problem 23.01: In an electrical circuit the total impedance ZT is given by ZT = (Z1*Z2/(Z1 + Z2))+ Z3.   Determine ZT in (a + jb) form, correct to two decimal places, when Z1 = 5 - j3, Z2 = 4 - i7 and Z3 = 3.9 - i6.7.

//initializing the variables:
Z1 = 5 - 3*%i;
Z2 = 4 + 7*%i;
Z3 = 3.9 - 6.7*%i;

//calculation:
ZT = (Z1*Z2/(Z1 + Z2))+ Z3
y = imag(ZT)
x = real(ZT)

printf("\n\n Result \n\n")
printf("\n ZT is %.2f + (%.2f)i", x,y)