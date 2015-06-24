
clear;
clc;

printf("\t Example 1.1\n");

k=35; //Thermal Conductivity, W/m*K
T1=110;// Temperature of front
T2=50; // Temperature of back,C
A=0.4;//area of slab,m^2
x=0.03; //Thickness of slab,m

q=-k*(T2-T1)/(1000*x); //formula for heat flux
printf("\t heat flux is: %.0f KW/m^2\n",q);

Q=q*A; //formula for heat transfer rate
printf("\t heat transfer rate is: %.0f KW\n",Q);

//End