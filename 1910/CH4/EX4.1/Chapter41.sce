// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 4, Example 1")
//Diameter of apple in m
d = 100*(10^(-3));
//radius in m
r = d/2;
//Thermal conductivity of apple in W/(m*K)
k = 0.6;
//Heat transfer coefficient in W/(m^2*°C)
h = 10;
//Caculating characteristic dimension in m
Lc = (((((4*%pi)*r)*r)*r)/3)/(((4*%pi)*r)*r);
//Biot number
disp("Biot number is")
Bi = (h*Lc)/k
if Bi<0.1 then
  disp("Problem is suitable for lumped parameter analysis")
else
  disp("Problem is not suitable for lumped parameter analysis")
end;
