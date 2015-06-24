clc
clear
//Initialization of variables
P=200 //psia
Ts=260 //F
Tf=220 //F
m=10000 //lb
Pc=20 //psia
//calculations
disp("From mollier charts,")
hf=188 //Btu/lb
h2=1172 //Btu/lb
Q=m*(h2-hf)
//results
printf("Heat absorption = %d Btu/hr",Q)
