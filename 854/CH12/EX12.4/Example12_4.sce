//clear//
//Caption:Program to find the penetration depth and intrinsic impedance
//Example12.4
//page409
clc;
f = 2.5e09;//high microwave frequency = 2.5GHz
er1 = 78;//relative permittivity
er2 = 7;
C = 3e08; //free space velocity in m/sec
[uo,eo] = muo_epsilon(); //free space permittivity and permeability
ur = 1; //relative permeability
etta0 = 377; //free space intrinsic imedance in ohms
alpha = attenuation_constant_dielectric(uo,eo,f,er1,er2,ur);
etta = intrinsic_dielectric(etta0,er1,er2);
disp(alpha,'attenuation constant in Np/m alpha=')
disp(etta,'Intrinsic constant in ohms etta=')
//Result
//attenuation constant in Np/m alpha=     20.727602  
// Intrinsic constant in ohms etta=       42.558673 + 1.9058543i  
