clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 13.4   Page 830 \n')// Example 13.4

// Power required to maintain prescribed temperatures

T3 = 300         ;//[K] Temperature of surrounding
L = .15        ;//[m] Furnace Length
T2 = 1650+273      ;//[K] Temperature of bottom surface
T1 = 1350+273      ;//[K] Temperature of sides of furnace
D = .075           ;//[m] Diameter of furnace
stfncnstt = 5.670*10^-8;        //[W/m^2.K^4] Stefan Boltzman Constant
A2 = %pi*D^2/4        ;//[m] Area of bottom surface
A1 = %pi*D*L         ;//[m] Area of curved sides
//From Figure 13.5 or Table 13.2, with ri/L = .25 
F23 = .056;
F21 = 1 - F23;        //By Summation Rule
F12 = A2/A1*F21;         //By reciprocity
F13 = F12            ;//By Symmetry
//From Equation 13.17 Heat balance
q = A1*F13*stfncnstt*(T1^4 - T3^4) + A2*F23*stfncnstt*(T2^4 - T3^4);

printf('\n Power required to maintain prescribed temperatures is = %i W',q);