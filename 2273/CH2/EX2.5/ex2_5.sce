
//Calculate the most economical cross sectional area
clear;
clc;
//soltion
//given
id=0.1;//interest & depreciation charges
pf=.85;//lagging
Pm=10^3;//Watts//Max Demand
Pt=5*10^6//kWh//Toatal energy consumption
V=11000;//volts//supply voltage
cst=.05;//rs// cost of energy per unit
d=1.72*10^-6;//ohm cm//specific resistance
t=(365*24);//time of energy loss
printf("Annual cost of cable is Rs(80000a + 20000)per km\n");
lf=Pt/(Pm*t)//Annual load factor
printf("Annual load factor= %f\n", lf);
llf=.25*lf+.75*lf^2;//Loss load factor
printf("Loss load factor= %f\n",llf);
i=Pm*1000/(sqrt(3)*V*pf);//ampere
printf("Current in each conductor= %.1f A\n", i);
P2=80000*id;//energy lost per annum
printf("Capital cost= P2*a= %d*a*l \n", P2);
R=d*100*1000;//ohm
P3=(3*i^2*R*t*cst*llf)/1000;//kWh//annual cost of energy loss
printf("Energy loss per annum= (P3*l)/a= (%f*l)/a \n",P3);
a=sqrt(P3/P2);
printf("Economic cross section of conductor is= √(P3/P2)= %f square cm \n",a);
//THERE IS TYPOGRAPHICAL ERROR IN THE ANS IN BOOK IT IS 0.2404 cm^2
