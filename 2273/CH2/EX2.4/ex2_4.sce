//Calculate the most economical cross sectional area
clear;
clc;
//soltion
//given
id=0.1;//interest & depreciation charges
pf=.8;//lagging
P=10^6;//Watts//load
V=11000;//volts//supply voltage
cst=.15;//rs// cost of energy per unit
d=1.75*10^-6;//ohm cm//specific resistance
l=1000//m//length of the cable
t=3000;//hours
printf("Annual cost of 2 core feeder cable is Rs(30 + 500a)per meter\n");
R=(d*1000*100);//ohm//resistance of conductor
printf("Resistance of each conductor= %f/a \n", R);
i=P/(V*pf);//ampere
printf("Current in each conductor= %f A\n", i);
P2=500*10^3*id;//energy lost per annum
printf("Capital cost= P2*a= %d*a \n", P2);
P3=(2*i^2*R*t*cst)/1000;//kWh//annual cost of energy loss
printf("Energy loss per annum= P3/a= %f/a \n",P3);
a=sqrt(P3/P2);
printf("Economic cross section of conductor is= √(P3/P2)= %f square cm \n",a);
printf("Diameter of conductor= %f cm \n", sqrt(4*a/%pi));
