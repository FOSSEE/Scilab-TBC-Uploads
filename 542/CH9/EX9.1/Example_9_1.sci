clear;
clc;
printf("\n Example 9.1");
d_particle = 5;          //particle size is in um
p = 1000;               //density of water in kg/m^3
ps = 2800;              //density of solids in kg/m^3
viscosity = 10^(-3);    //viscosity is in Ns/m^2
uo = ((d_particle*10^(-6))^2)*(ps-p)*9.81/(18*viscosity);
printf("\n Terminal falling velocity of particles of diameter = %.2f m/sec",uo*10^5);
Q = 0.25;              //volumetric flow rate is in m^3/sec
printf("\n E = %.2f*10^(4) m^2",(Q/uo)*10^(-4));

printf("\n For coal-in-oil mixture");
uo1 = 0.04/(Q/uo);
printf("\n uo = %.2f*10^-6 m/sec",uo1*10^6);

d = sqrt((18*0.01*uo1)/((1300-850)*9.81));
printf("\n d = %d um",(d/3)*10^6);

