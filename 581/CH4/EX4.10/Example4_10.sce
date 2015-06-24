

clear;
clc;

printf("\t Example 4.10\n");

T1=308; //air temperature, K
Q=0.1; // heat transferred,W
k=16; //thermal conductivity of wires, W/(m*K)
d=0.00062; //diameter of wire,m
Heff=23; //convection coefficient, W/(m^2*K)
//the wires act actn as very long fins connected to ressistor hence tanh(mL)=1

R1=1/(k*Heff*3.14^2*d^(3)/4)^0.5;

Req=(1/R1+1/R1+7.17*(1.33*10^-4)+13*(1.33*10^-4))^-1;   //the 2 thermal ressistances are in parallel to the thermal ressistance for natural convection and thermal radiation from the ressistor's surface found in previous eg.

Tres=T1+Q*Req;
Trs=Tres-273; 
printf("\t ressistor temperature is : %.2f C or about 10 C lower than before.\n",Trs);
//end