//Problem 23.03: Solve the following complex equations:
//(a) 3(a + ib) = 9-i2
//(b) (2+i)(-2+i) = x+iy
//(c) (a-i(2b))+(b-i3a) = 5+i2

//initializing the variables:
Z1 = 9 - 2*%i;
Z2 = 2 + 1*%i;
Z3 = -2 + 1*%i;
Z4 = 5 + 2*%i;

//calculation:
za = Z1/3
zb = Z2*Z3
zca = (2*real(Z4) + imag(Z4))/-1
zcb = real(Z4) - zca
zaa = real(za)
zab = imag(za)
zbx = real(zb)
zby = imag(zb)

printf("\n\n Result \n\n")
printf("\n (a)a and b are %.0f and %.2f resp.", zaa,zab)
printf("\n (b)x and y are %.0f and %.0f resp.", zbx,zby)
printf("\n (c)a and b are %.0f and %.0f resp.", zca,zcb)