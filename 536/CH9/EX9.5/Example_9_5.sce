clc;
clear;

printf("\n Example 9.5\n");

T=295; //initial temperature of surfaces
T2f=375; //Final temperature of far surface
dT1=900; //Temperature of near face raised
DH=4.2e-7; //Thermal diffusivity
//The development of the temperature profile is shown in Figure 9.12
//The problem will be solved by taking relatively large intervals for dx.
//Choosing dx = 50 mm, the construction shown in Figure 9.12
dx=50e-3;
//Because the second face is perfectly insulated, the temperature gradient must
// be zero at this point.
//It is seen that the temperature is
//less than 375 K after time 23dt and greater than 375 K after time 25dt
//Thus:
//t=24*dt
//from equation 9.43
dt=dx^2/(2*DH);
t=24*dt;
printf("\n The time taken to rise from 295 to 375 K = %.1f h",t/3600);