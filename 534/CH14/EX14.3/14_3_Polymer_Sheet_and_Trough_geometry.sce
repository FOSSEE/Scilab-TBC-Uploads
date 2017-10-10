clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 14.3   Page 898 \n')// Example 14.3

// Rate of water vapor molar diffusive ttansfer through the trough wall

D = .005     ;//[m] Diameter
L = 50*10^-6;          //[m] Length
h = .003            ;//[m] Depth
Dab = 6*10^-14        ;//[m^2/s] Diffusion coefficient
Cas1 = 4.5*10^-3        ;//[kmol/m^3] Molar concentrations of water vapor at outer surface
Cas2 = 0.5*10^-3        ;//[kmol/m^3] Molar concentrations of water vapor at inner surface

//Transfer Rate through cylindrical wall Equation 14.54
Na = Dab/L*(%pi*D^2/4 + %pi*D*h)*(Cas1-Cas2);    //[kmol/s]

printf('\n Rate of water vapor molar diffusive ttansfer through the trough wall %.2e kmol/s',Na);
//END