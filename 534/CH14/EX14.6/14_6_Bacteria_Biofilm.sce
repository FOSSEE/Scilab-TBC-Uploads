clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 14.6   Page 909 \n')// Example 14.6

// Maximum Thickness of a bacteria laden biofilm, that may be siccessfully treated

Dab = 2*10^-12        ;//[m^2/s] Diffusion coefficient
Ca0 = 4*10^-3        ;//[kmol/m^3] Fixed Concentration of medication
Na = -.2*10^-3       ;//[kmol/m^3.s] Minimum consumption rate of antibiotic
k1 = .1            ;//[s^-1] Reaction Coefficient

//For firsst order kinetic reaction Equation 14.74
m = (k1/Dab)^.5;
L = m^-1*acosh(-k1*Ca0/Na);

printf('\n Maximum Thickness of a bacteria laden biofilm, that may be siccessfully treated is %.1f pico-m',L*10^6);
//END