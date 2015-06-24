//clear//
//Caption:Program to find the attenuation constant,propagation constant and intrinsic impedance
//Example12.5
//page412
clc;
f = 2.5e09;//high microwave frequency = 2.5GHz
er1 = 78;//relative permittivity
er2 = 7;
C = 3e08; //free space velocity in m/sec
[uo,eo] = muo_epsilon(); //free space permittivity and permeability
ur = 1; //relative permeability
etta0 = 377; //free space intrinsic imedance in ohms
alpha = attenuation_constant_gooddie(uo,eo,f,er1,er2,ur);
etta = intrinsic_good_dielectric(etta0,er1,er2);
beta1 = phase_constant_gooddie(uo,eo,f,er1,er2,ur);
disp(alpha,'attenuation constant per cm alpha=')
disp(beta1,'phase constant in rad/m beta1 =')
disp(etta,'Intrinsic constant in ohms etta=')
//Result
//attenuation constant per cm alpha=   
//     20.748417  
//phase constant in rad/m beta1 =   
//    462.3933  
//Intrinsic constant in ohms etta=   
//    42.558673 + 1.9058543i  
