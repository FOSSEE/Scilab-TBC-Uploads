

clc
//given that
n = 4 // number of crystals per unit cell
A_c = 22.99 // molar mass of cation i.e. sodium
A_a = 35.45 // molar mass of cation i.e. chlorine
r_c = 1.02e-8 // radius of sodium atom in cm
r_a = 1.81e-8 // radius of sodium atom in cm
N_a = 6.023e23 // Avogadro constant

printf("Example 4.6\n")
a = 2*(r_c+r_a)// edge length of Nacl molecule
V_c = a^3 // Volume of unit cell
rho = (n*(A_c+A_a))/(V_c*N_a)
printf("\n Theoretical density of crystal is %0.2f g/cm^3 .",rho)
printf("\n\n This result compares very favourable with \n experimental value of 2.16 g/cm^3 .")

