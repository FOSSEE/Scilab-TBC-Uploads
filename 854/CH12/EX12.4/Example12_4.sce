//clear//
//Caption:Program to find the penetration depth and intrinsic impedance
//Example12.4
//page409
clc;
f = 2.5e09;//high microwave frequency = 2.5GHz
er1 = 78;//relative permittivity
er2 = 7;
C = 3e08; //free space velocity in m/sec
eo = 8.854187*10^-12;
uo = 4*%pi*10^-7;
ur = 1; //relative permeability
etta0 = 377; //free space intrinsic imedance in ohms
alpha =   ((2*%pi*f)*sqrt(er1)/(sqrt(2)*C))*sqrt(sqrt(1+(er2/er1)^2)-1);
etta = (etta0/(sqrt(er1)))*(1/sqrt(1 - %i*(er2/er1)));
disp(alpha,'attenuation constant in Np/m alpha=')
disp(etta,'Intrinsic constant in ohms etta=')
//Result
//attenuation constant in Np/m alpha=     20.727602  
// Intrinsic constant in ohms etta=       42.558673 + 1.9058543i