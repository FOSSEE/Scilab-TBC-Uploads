
//To find the Electric Potential

//Example 29.4

clear;

clc;

Q1=10*10^-6;//First Charge in Coloumbs

Q2= 20*10^-6;//Second Charge in Coloumbs

r=0.02;//Distance between the charges in metres

K=9*10^9;//Value of constant (1/(4*pi*ε0))

V1=Q1*K*2/r;//Electric Potential due to First Charge

V2=Q2*K*2/r;//Electric Potential due to Second Charge

V=V1+V2;//Net Potential

printf("net potential=%f MV",V/10^6);
