exec('electrostatics.sci', -1)

//Given that
A = 115*10^-4  //in m^2
d = 1.24*10^-2  //in meter
Vo = 85.5  //in Volts
b = 0.780*10^-2  //in meter
x = 2.61

//Sample Problem 26-6a
printf("**Sample Problem 26-6a**\n")
Co = A*Eo/d
printf("The capacitance of the plates before the dielectric slab is inserted is equal to %fpF\n", Co*10^12)

//Sample Problem 26-6b
printf("\n**Sample Problem 26-6b**\n")
Q = Co*Vo
printf("Free charge on the plates is equal to%fpC\n", Q*10^12)

//Sample Problem 26-6c
printf("\n**Sample Problem 26-6c**\n")
E = Q/(A*Eo)
printf("The electric field is equal to %fV/m\n", E)

//Sample Problem 26-6d
printf("\n**Sample Problem 26-6d**\n")
E1 = Q/(A*Eo*x)
printf("The electric field in dielectric slab is equal to %fV/m\n", E1)

//Sample Problem 26-6e
printf("\n**Sample Problem 26-6e**\n")
V = E*(d-b) + E1*b
printf("The new potential difference is equal to %fV\n", V)

//Sample Problem 26-6f
printf("\n**Sample Problem 26-6f**\n")
C = Q/V
printf("The new capacitance is equal to %fpF", C*10^12)