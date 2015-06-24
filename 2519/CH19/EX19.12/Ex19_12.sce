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
f=500 //Btu/hr ft^2 F
//calculations
A2=%pi*d1*l/12
A3=%pi*d2*l/12
Rt=1/(h1*A2) + 1/(h2*A3) +log(d2/d1) /(2*%pi*k*l)
Q=(t2-t1)/Rt
Rt2=Rt+ 1/(f*A2)
Q2=(t2-t1)/Rt2
//results
printf("Heat transfer = %d Btu/hr",Q)
printf("\n Heat transfer in case 2= %d Btu/hr",Q2)
disp("The answer in the textbook is a bit different due to rounding off error in textbook.")
