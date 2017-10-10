clc;
disp("Example 4.14")
h= 5 // in m
f=0.005
Q=(18200/3600)*0.001 // flow rate in m^3/s
l=50 // in m
//from the formulae used in the last problem as well
d=(((2*f*l*Q*4*Q*4)/(%pi*%pi*h*9.81))^0.2)
disp("The diameter is ")
disp(d)
