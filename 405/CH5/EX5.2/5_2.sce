clear;
clc;
printf("\t\t\tExample Number 5.2\n\n\n");
// isentropic expansion of air 
// illustration5.2
// solution

Ta = 300+273.15;// [K] air temperature
Pa = 0.7;// [MPa] pressure of air
u2 = 300;// [m/s] final velocity
gc = 1;// [m/s^(2)] acceleration due to gravity
Y = 1.4;// gama value for air 
Cp = 1005;// [J/kg degree celsius]
// the initial velocity is small and the process is adiabatic. in terms of temperature 
T2 = Ta-u2^(2)/(2*gc*Cp);
printf("the static temperature is %f K",T2);
// we may calculate the pressure difference from the isentropic relation 
p2 = Pa*((T2/Ta)^(Y/(Y-1)));
printf("\n\n static pressure is %f MPa",p2);
// the velocity of sound at condition 2 is 
a2 = 20.045*T2^(1/2);// [m/s] 
// so that the mach no. is 
M2 = u2/a2;
printf("\n\n Mach number is %f",M2);


