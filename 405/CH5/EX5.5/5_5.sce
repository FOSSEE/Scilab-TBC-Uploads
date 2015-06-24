clear;
clc;
printf("\t\t\tExample Number 5.5\n\n\n");
// flat plate with constant heat flux
// illustration5.5
// solution

u = 5;// [m/s] air velocity
l = 0.6;// [m] plate length
Ta = 27+273.15;// [K] temperature of airstream
// properties should be evaluated at the film temperature, but we do not know the plate temperature so for an initial calculation we take the properties at the free-stream conditions of
v = 15.69*10^(-6);// [square meter/s] kinematic viscosity
k = 0.02624;// [W/m degree celsius] heat transfer coefficient
Pr = 0.7;// prandtl number
Re_l = l*u/v;// reynolds number
P = 1000;// [W] power of heater
qw = P/l^(2);// [W/square meter] heat flux per unit area 
// from equation (5-50) the average temperature difference is 
Tw_minus_Tinf_bar = qw*l/(0.6795*k*(Re_l)^(1/2)*(Pr)^(1/3));// [degree celsius]
// now, we go back and evaluate properties at 
Tf = (Tw_minus_Tinf_bar+Ta+Ta)/2;// [degree celsius]
// and obtain
v1 = 28.22*10^(-6);// [square meter/s] kinematic viscosity
k1 = 0.035;// [W/m degree celsius] heat transfer coefficient
Pr1 = 0.687;// prandtl number
Re_l1 = l*u/v1;// reynolds number
Tw_minus_Tinf_bar1 = qw*l/(0.6795*k1*(Re_l1)^(1/2)*(Pr1)^(1/3));// [degree celsius]
// at the end of the plate(x = l = 0.6m) the temperature difference is obtained from equation (5-48) and (5-50) with the constant of 0.453
Tw_minus_Tinf_x_equal_l = Tw_minus_Tinf_bar1*0.6795/0.453;// [degree celsius]
printf("average temperature difference along the plate is %f degree celsius",Tw_minus_Tinf_bar);
printf("\n\n temperature difference at the trailing edge is %f degree celsius",Tw_minus_Tinf_x_equal_l);



