clc
clear
//Initialization of variables
w=0.3448
R=8.3143
Tc=647.3
//calculations
disp("From charts of entropy")
h0=0.57
h1=0.05
h2=h0+w*h1
h3=h2*R*Tc
dh=-h3
//results
printf("Enthalpy departure = %d kJ/kmol",dh)
disp("The answer is a bit different due to rounding off error in the textbook")
