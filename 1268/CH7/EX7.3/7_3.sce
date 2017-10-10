clc;
disp("Example 7.3")
massflux=54000/3600   // in kg/M^2/s
d= 0.0022 // in m
e= 0.32
density= 1000 // in kg/m^3
mew=0.001 // in kg/ms
P=(massflux*massflux*(1-e)/(e*e*e*d*density))*(1.75+(150*mew*(1-e)/(d*massflux)))
disp(P,"Frictional pressure drop is ")
disp("The value shown in the book is 10278.1, which is different from the above, due to rounding off errors");
