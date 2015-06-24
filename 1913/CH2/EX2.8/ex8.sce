clc
clear
m=5;//Mass of the substance in the system in kg
P1=500;//Initial pressure of the system in kPa
P2=100;//Final pressure of the system in kPa
V1=0.22;//Initial volume of the system in m^3
n=1.2;//Polytropic index

//Calculations 
V2=V1*(P1/P2)^(1/1.2);//Final volume of the system in m^3
U=3.5*(P2*V2-P1*V1);//Change in the internal energy of the system in kJ
W=(P1*V1-P2*V2)/(n-1);//Work developed in the process in kJ
Q=U+W;//Heat transfer in the process in kJ

//Output
printf('(1)Heat transfer of the process Q = %3.0f kJ \n (2)Total change in Internal Energy U = %3.0f kJ \n (3)Non flow work in the process W = %3.0f kJ ',Q,U,W)
