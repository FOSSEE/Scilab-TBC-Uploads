// Calculate the change in del_f required to increase nucleation rate
clc
T= 300 // temperature in kelvin
R = 8.314 // universal gas constant
k = 2.303 // conversion factor
a1 = 1e42
a2 = 1e6 // nucleation rate
a3 = 1e10 // nucleation rate
printf("Example 9.2")
I1 = (log10(a1)-log10(a2))*k*R*T // exponent factor
I2 = (log10(a1)-log10(a3))*k*R*T// exponent factor
del_f = I1-I2 // difference 
a = 10^(log10(a3)-log10(a2))

printf("\n  A change of %d KJ mol^-1 energy is required to increase nucleation factor from \n  %.0e m^-3 s^-1  to  %.0e m^-3 s^-1 ",ceil(del_f/1e3),a,a3)
