// Problem no 15.3,Page no.352

clc;clear;
close;

p=2*10**6 //MPa //Steam Pressure
t=0.02 //m //thickness of boiler plate
sigma_t=120*10**6 //MPa //Tensile stress
sigma_l=120*10**6 //MPa //Longitudinal stress
rho=0.90 //% //Efficiency of Longitudinal joint
rho_e=0.40 //% //Efficiency of circumferential joint

//Calculations

D_1=sigma_t*2*t*rho*p**-1 //Diameter of boiler 
D_2=sigma_l*4*t*rho_e*p**-1 //Diameter of boiler 

//Max diameter of boiler is equal to minimum value of diameter

//Result
printf("Maximum diameter of boiler is %.2f",D_2);printf(" m")
