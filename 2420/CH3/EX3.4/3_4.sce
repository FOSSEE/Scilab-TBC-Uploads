clc
clear
//Initialization of variables
r=16
rc=4
k=1.4
//calculations
etat=1-1/r^(k-1) *((rc^k -1)/(k*(rc-1)))
eta=etat*100
//results
printf("Thermal efficiency = %.1f percent",eta)
disp("The answer is a bit different due to rounding off error in the textbook")
