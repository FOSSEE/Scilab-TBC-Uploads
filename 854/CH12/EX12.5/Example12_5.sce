clear
//Caption:Program to find the attenuation constant,propagation constant and intrinsic impedance
//Example12.5
//page412
clc;
f = 2.5e09;//high microwave frequency = 2.5GHz
er1 = 78;//relative permittivity
er2 = 7;
C = 3e08; //free space velocity in m/sec
eo = 8.854187*10^-12;
uo = 4*%pi*10^-7;
ur = 1; //relative permeability
etta0 = 377; //free space intrinsic imedance in ohms
alpha =   (2*%pi*f)*(0.5*er2*8.85*10^-12)*etta0/sqrt(78);
etta = (etta0/(sqrt(er1)))*(1/sqrt(1 - %i*(er2/er1)));
beta1 = (2*%pi*f)*sqrt(er1)/C;
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