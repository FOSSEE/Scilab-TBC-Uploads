clc
clear
//Initialization of variables
P=50 //hp
m=30 //lb
E=19000 //Btu/lb
//calculations
eta= P*2545/(m*E) *100
//results
printf("Efficiency = %.1f percent",eta)
