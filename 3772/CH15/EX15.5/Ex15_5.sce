// Problem no 15.5,Page no.353

clc;clear;
close;

t=0.015 //m //Thickness of plate
sigma_t=120*10**6 //Pa //tensile stress
sigma_l=120*10**6 //Pa //Longitudinal stress
rho=0.7 //% //Efficiency of longitudinal joints
rho_l=0.3 //% //Efficiency of circumferential joints
p=2*10**6 //Pa //Internal pressure
D=1.5 //m //shell diameter

//Calculations (Part-1)

D_1=sigma_t*2*t*rho*p**-1    //m 
D_2=sigma_l*4*t*rho_l*p**-1  //m 

//Thus max diameter of shell is min of above two cases

//Calculations (Part-2)

p_1=sigma_t*2*t*rho*D**-1*10**-6    //MPa
p_2=sigma_l*4*t*rho_l*D**-1*10**-6  //MPa

//Thus Internal pressure is min of above two cases

//Result
printf("Max Permissible Diameter of shell is %.2f",D_2);printf(" m")
printf("\n Max Permissible Internal Pressure is %.2f",p_2);printf(" MPa")
