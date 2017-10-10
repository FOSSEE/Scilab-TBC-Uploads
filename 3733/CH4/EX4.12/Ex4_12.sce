//Example 4_12
clc;funcprot(0);
//Given data
p_a=1.30;// Atmospheric pressure in bar
p_c=0.5;// bar
V_c=5;// m/sec
V_d=2;// m/sec
h_f=0.2;// m
g=9.81;// m/s^2

//Calculation
w=1000*9.81;// N
h=(((p_a-p_c)*1.03*10^5)/w)-((V_c^2)/(2*g))+(((V_d^2)/(2*g))+h_f);// m
printf('\n The maximum height of the turbine above tail race,h=%0.3f m',h);
// The answer provided in the textbook is wrong
