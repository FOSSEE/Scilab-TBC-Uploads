//Example 13_9
clc;clear;funcprot(0)
// Given values
V_1=1.2;// The velocity in m/s
y_1=0.80;// The flow depth in m
gradz_b=0.15;// m
g=9.81;// m/s^2

// Calculation
Fr_1=(V_1/sqrt(g*y_1));// The upstream Froude number
y_c=(((y_1)^2*(V_1)^2)/(g))^(1/3);// The critical depth in m
E_s1=y_1+(((V_1)^2)/(2*g));// The upstream specific energy in m
// Solving equation y_2^3-(E_s1-gradz_b)y^2+(V_1^2)/(2*g)*y_1^2
coeff=[1,-(E_s1-gradz_b),0,((V_1^2)/(2*g)*y_1^2)];
y=roots(coeff);
d=y_1-(y(1)+gradz_b);// Depression in m
printf("The water surface is depressed over the bump in the amount of %0.2f m \n",d);
