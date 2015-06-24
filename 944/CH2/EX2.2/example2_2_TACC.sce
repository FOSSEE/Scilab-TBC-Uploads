//example 2.2

clear;
clc;

//Given:
m=16;//weight of oxygen [grams]
w=32;//molecular weight of oxygen [grams/mol]
T=300;//Temperature during compression [K]
P1=1;//initial pressure of process [atm]
P2=100;//final pressure of process[atm]
R=8.314;//Universal gas constant [J/K/mol]

//To find the minimum work of compression 
n=m/w;//no. of moles of oxygen
W=-n*R*T*log(P1/P2);
printf("Mininmum work done to compress oxygen = %f J " , W )