clc
clear
//Initialization of variables
km1=0.62
km2=0.16
km3=0.4
l1=8 //in
l2=4 //in
l3=4 //in
Tf=1600 //F
Tc=100 //F
//calculations
Rw=l1/12/km1 +l2/12/km2 +l3/12/km3
Rb=l1/12/km1
Ti=Tf-Rb/Rw *(Tf-Tc)
//results
printf("Interface temperature = %.1f F",Ti)
disp("The answers might differ a bit from textbook due to rounding off error.")
