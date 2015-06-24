//Calculate the most economical cross sectional area
clear;
clc;
//soltion
//given
id=0.15;//interest & depreciation charges
i=260;//ampere//max current
d=0.173;//ohm//resistance of conductor
cst=.03;//rs// cost of energy per unit
t=(365*24)/2;//time of energy loss
printf("Annual cost of 2 core feeder cable is Rs(90a+10)per meter\n");
P3=(2*i^2*d*t*cst)/1000//kWh//annual cost of energy loss
printf("Energy loss per annum= P3/a= %f/a \n",P3);
P2=90*1000*id;//energy lost per annum
printf("Capital cost= P2*a= %d*a \n", P2);
a=sqrt(P3/P2);
printf("Economic cross section of conductor is= √(P3/P2)= %f square cm",a);
