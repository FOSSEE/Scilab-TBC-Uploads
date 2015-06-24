clc 
 
//given that
l = 2.5e-10 // width of potential well in m
h = 6.63e-34 // Plank constant
m = 9.1e-31 // mass of electron in Kg
printf("Example 2.24")
for n = 1:2
    E = n^2*h^2/(8*m*l^2) // Calculation of energy in Joule
E_eV = E/1.6e-19 // Calculation of energy in eV

printf("\n Energy of electron for state %d is %f eV.",n,E_eV);
end
