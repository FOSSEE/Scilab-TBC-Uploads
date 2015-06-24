
clc 
//Given that
V = 100 // Applied potential in Volt
d = 1 // Separation between plates in cm
k1 = 8 // Dielectric constant
k2 = 9 //dielectric constant
epsilon_0 = 8.854e-12 // Permittivity of free space

printf("Example 4.11")
E_0 = V/(d*1e-2) // Calculation of electric field
E = E_0/k1*k2 // Calculation of electric field
D = k1*epsilon_0*E // Calculation of electrical displacement vector
P = (k1-1)*epsilon_0*E  // Calculation of electrical polarization 

printf("\n Magnitude of Electrical vector is %e Volt/meter",E) // Answer in book is 1.125e3 Volt/meter

printf("\n Magnitude of Electrical Displacement vector is %e C/m^2",D)// Answer in book is 8.85e-8C/m^2

printf("\n Magnitude of Electric polarization vector is %e C/m^2\n\n\n",P)// Answer in book is 7.774e-8C/m^2
