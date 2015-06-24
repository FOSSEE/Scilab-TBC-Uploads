//example 6.10

clear;
clc;

//Given:
m1=0.03;//mass of CO2(g)[gm]
w1=44.01;//molecular weight of CO2(g)[gm/mol]
m2=250;//mass of water[gm]
w2=18.02;//molecular weight of water[gm/mol]
k=1.25*10^6;//Henry's law constant[Torr]
T=298;//Temperature[K]

//To find the partial pressure of CO2 gas 
n1=m1/w1;//no. of moles of CO2
n2=m2/w2;//no. of moles of water
x1=n1/(n1+n2);//mole fraction of CO2
Pco2=k*x1;//Partial pressure of CO2[Torr]
printf("The partial pressure of CO2 gas is %f Torr",Pco2);








