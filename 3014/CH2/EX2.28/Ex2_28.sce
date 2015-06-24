clc 
 
//given that
l = 1 // width of potential well in angstrom
h = 6.63e-34 // Plank constant
m = 9.1e-31 // mass of electron in Kg
printf("Example 2.28")
for n = 1:3
    lambda = 2*l/n // Calculation of wavelength
    E = n^2*h^2/(8*m*(l*1e-10)^2) // Calculation of energy in Joule
E_eV = E/1.6e-19 // Calculation of energy in eV
printf("\n For state:%d  Energy is %f eV & wavelength is %f angstrom ",n,E_eV,lambda);
end
