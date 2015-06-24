clc 
clear
//Input data
m=3;//Mass of substance in the system in kg
P1=500;//Initial pressure of the system in kPa
P2=100;//Final pressure of the system in kPa
V1=0.22;//Initial volume of the system in m^3
n=1.2;//Polytropic index 
Q1=30;//Heat transfer for the another process

//Calculations
V2=V1*(P1/P2)^(1/1.2);//Final volume of the system in m^3
U=3.56*(P2*V2-P1*V1);//Total change in internal energy in kJ
W1=(P2*V2-P1*V1)/(1-n);//Work done for the 1-2 process in kJ
Q=U+W1;//Heat developed in the process in kJ
W2=Q1-U;//Work done for the another process in kJ

//Output
printf('(a)Total change in internal energy U = %3.0f kJ \n (b)Work done for the 1-2 process W = %3.0f kJ \n (c)Heat developed in the process Q = %3.0f kJ \n (d)Work done for the another process W = %3.0f kJ ',U,W1,Q,W2)
