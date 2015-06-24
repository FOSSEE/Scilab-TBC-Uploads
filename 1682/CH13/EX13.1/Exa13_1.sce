//Exa 13.1
clc;
clear;
close;
//Cost to make :
disp("Cost to make : ")
//given data :
material=300;//in Rs.
labour=250;//in Rs.
overhead=100;//in Rs.
VC=material+labour+overhead;//in Rs.
demand=5000;//in units
TVC=demand*VC;//in Rs.
FC=1000000;//in Rs.
TC=FC+TVC;//in Rs.
disp(TC,"Total cost in Rs. : ");

//Cost to buy :
disp("Cost to buy : ")
//given data :
Pcost=900*demand;//in Rs.
FC=1000000;//in Rs.
TC=FC+Pcost;//in Rs.
disp(TC,"Total cost in Rs. : ");
disp("The cost of making fixtures is less than the cost of buying fixtures from outside. Therefore, the organisation should make the fixtures.")