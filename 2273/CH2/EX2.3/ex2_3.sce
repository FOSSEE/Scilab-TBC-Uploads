//Calculate the most economical current density and diameter of conductor
clear;
clc;
//soltion
//given
id=0.1;//interest & depreciation charges
cst=.02;//rs// cost of energy per unit
d=0.173;//ohm//resistance of conductor
pf=.8;//lagging
P=1500*10^3;//Watts//load
V=11000;//volts//supply voltage
t=200*8;//hours
printf("annual cost of 3 core feeder cable is Rs(8000 + 20000 a)per km\n");
printf("Resistance of each conductor= %.3f/a \n", d);
i=P/(sqrt(3)*V*pf);//ampere
printf("Current in each conductor= %.3f A\n", i);
P2=20000*id;//energy lost per annum
printf("Capital cost= P2*a= %d*a \n", P2);
P3=(3*i^2*d*t*cst)/1000;//kWh//annual cost of energy loss
printf("Energy loss per annum= P3/a= %f/a \n",P3);
a=sqrt(P3/P2);
printf("Economic cross section of conductor is= √(P3/P2)= %f square cm \n",a);
printf("Diameter of conductor= %.1f cm \n", sqrt(4*a/%pi));
printf("Current density= %f A/cm square", i/a);
