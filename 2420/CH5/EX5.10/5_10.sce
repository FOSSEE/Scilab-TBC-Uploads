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
//results
printf("Heat absorption = %d Btu/hr",Q)
disp("The answer is a bit different due to rounding off error in textbook")
