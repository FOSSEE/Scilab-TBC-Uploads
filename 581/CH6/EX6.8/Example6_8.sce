
clear;
clc;

printf("\t Example 6.3\n");

v=15; //air velocity,m/s
T2=383; // temperature of plate,K
l=0.5; // length of plate,m
w=0.5; //width of plate,m

Pr=0.707; // prandtl no.
Rel=v*l/(0.0000194); //reynplds no.
Nul=0.664*(Rel)^0.5*Pr^(1/3); // nusset no.

Cf=2*Nul/(Rel*Pr^(1/3)); //friction coefficient

s=Cf*0.5*1.05*225; //drag shear, kg/(m*s^2)
f=s*0.5^2-0.000024;  //drag force, kg/(m*s^2)

printf("\t drag force on heat transfer surface is :%f N or 0.23 oz.\n",f);

//end
