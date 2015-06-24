
clc
// given that
A = 6.45e-4 // Area of plat in m^2
l = 2e-3 // separation between plates in m
epsilon_r = 6 //dielectric constant of material
epsilon_0 = 8.85e-12 // universal constant
V = 10 // Applied voltage in Volt
printf("\n Example 17.5")
printf("\n Part A:")
C = epsilon_0*epsilon_r*A/l // Capacitance of a parallel plat capacitor
printf("\n Capacitance of capacitor is %.2e F",C)
printf("\n\n Part B:")
Q = C*V // Stored charge calculation
printf("\n Stored charge in capacitor is %.2e C",Q)
printf("\n\n Part C:")
D = epsilon_0*epsilon_r*V/l // Dielectric displacement
printf("\n Dielectric displacement in capacitor is %.2e C/m^2",ceil(D*1e9)/1e9)
printf("\n\n Part D:")
P = D - epsilon_0*V/l // Polarisation 
printf("\n Polarization is %.2e C/m^2", ceil(P*1e9)/1e9)



