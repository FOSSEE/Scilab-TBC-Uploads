clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 13.6   Page 836 \n')// Example 13.6

// Rate at which heat must be supplied per unit length of duct
// Temperature of the insulated surface

T2 = 500      ;//[K] Temperature of Painted surface
e2 = .4      ;// emissivity of Painted Surface
T1 = 1200      ;//[K] Temperature of Heated Surface
W = 1          ; //[m] Width of Painted Surface
e1 = .8      ;// emissivity of Heated Surface
er = .8        ;// emissivity of Insulated Surface
stfncnstt = 5.670*10^-8        ;//[W/m^2.K^4] Stefan Boltzman Constant

//By Symmetry Rule
F2R = .5;
F12 = .5;
F1R = .5;

//From Equation 13.20 Heat balance
q = stfncnstt*(T1^4-T2^4)/((1-e1)/e1*W+ 1/(W*F12+[(1/W/F1R) + (1/W/F2R)]^-1) + (1-e2)/e2*W) ;//[W/m] 

//Surface Energy Balance 13.13
J1 = stfncnstt*T1^4 - (1-e1)*q/(e1*W)		;// [W/m^2] Surface 1
J2 = stfncnstt*T2^4 - (1-e2)*(-q)/(e2*W)	;// [W/m^2] Surface 2
//From Equation 13.26 Heat balance
JR = (J1+J2)/2;
TR = (JR/stfncnstt)^.25;

printf('\n Rate at which heat must be supplied per unit length of duct = %.2f kW/m \n Temperature of the insulated surface = %i K',q/1000,TR);