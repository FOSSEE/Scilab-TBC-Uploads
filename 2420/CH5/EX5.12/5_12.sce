clc
clear
//Initialization of variables
m=150000 //lb
P1=1000 //psia
Ts=900 //F
Tf=200 //F
m2=21000 //lb
HV=12000 //Btu/lb
//calculations
disp("From mollier charts,")
h2=1448.2 //Btu/lb
hf=167.99 //Btu/lb
correc=2.2 //Btu/lb
hc=hf+correc
Q=m*(h2-hc)
output=Q
inpu=m2*HV
eta=output/inpu
//results
printf("Efficiency of the steam generating unit = %.1f percent",eta*100)
