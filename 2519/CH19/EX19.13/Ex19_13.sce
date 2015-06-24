clc
clear
//Initialization of variables
l=6 //ft
d1=0.55 //in
d2=0.75 //in
h1=280 //Btu/hr ft^2 F
h2=2000 //Btu/fr ft^2 F
k=220 //Btu/hr ft F
t2=212 //F
t1=60 //F
//calculations
A2=%pi*d1*l/12
A3=%pi*d2*l/12
Rt=1/(h1*A2) + 1/(h2*A3) +log(d2/d1) /(2*%pi*k*l)
U3=1/(A3*Rt)
//results
printf("Overall Heat transfer coefficient = %.1f Btu/hr ft^2 F",U3)
disp("The answer in the textbook is a bit different due to rounding off error in textbook.")

