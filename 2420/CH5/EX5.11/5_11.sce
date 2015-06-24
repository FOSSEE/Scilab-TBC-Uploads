clc
clear
//Initialization of variables
m=150000 //lb
P1=1000 //psia
Ts=900 //F
Tf=200 //F
//calculations
disp("From mollier charts,")
h2=1448.2 //Btu/lb
hf=167.99 //Btu/lb
correc=2.2 //Btu/lb
hc=hf+correc
Q=m*(h2-hc)
output=Q/1000
//results
printf("Output of the steam generating unit = %d kB/hr",output)
