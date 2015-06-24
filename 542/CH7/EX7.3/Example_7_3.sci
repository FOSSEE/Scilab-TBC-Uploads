clear;
clc;
printf("\n Example 7.3");
V = 0.094;         //volume in m^3
deltaP = -3530;    //P is in kN/m^2

//At t = 1105 secs
 V1 = 0.166;       //V is in m^3
 deltaP1 = -5890;   //P is in kN/m^2

a = [2.21*10^(6) -0.094;6.51*10^(6) -0.166];
b = [0.0088;0.0276];
x = inv(a)*b;
y = [x(2);x(1)];
printf("\n LA/v =%f       A^2/rμv = %f*10^(-7)",y(1),y(2)*10^7);
printf("\n For the full size plant:");
printf("\n LA/v = %f       A^2/rμv=%f*10^(-7)",10*y(1),y(2)*10^8);

//Solving LHS of the integral
LHS = integrate('b+0.154+2.31','b',0,1);
//Equating LHS = RHS
t = LHS/(3.46*10^(-3));
printf("\n t = %d secs",t);
printf("\n deltaP = %dkN/m^2",(1+0.154)/(4.64*10^(-7)*857));

































