
clear;
clc;

printf("\t Example 6.5\n");

T1=293; //air temperature,K
v=15; //air velocity,m/s
T2=383; // temperature of plate,K
l=0.5; // length of plate,m
w=0.5; //width of plate,m

Pr=0.707; // prandtl no.
Rel=v*l/(0.0000194); //reynplds no.
Nul=0.664*(Rel)^0.5*Pr^(1/3); // nusset no.

h1=367.8*(0.02885)/l; // average convection coefficient, W/(m^2*K)
Q=h1*l^(2)*(T2-T1); // heat transferred,W

h2=h1/2 // convection coefficient at trailing , W/(m^2*K)
a1=4.92*l/(Rel)^0.5*1000 // hydrodynamic boundary layer,m

a2=a1/(Pr)^(1/3); //thermal boundary layer,mm

printf("\t average heat trensfer coefficient is : %.1f W/m^2/K\n",h1);
printf("\t total heat transferred is  %.0f W\n",Q);
printf("\t convection coefficient at trailing is : %.1fW/(m^2*K)\n",h2);
printf("\t hydrodynamic boundary layer is : %.2f m\n",a1);
printf("\t thermal boundary layer is : %.2f mm\n",a2);

// end