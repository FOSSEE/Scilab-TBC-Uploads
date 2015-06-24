// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 2,Example 2")
t1=0;//ice point temperature in degree celcius
p1=3;//thermometric property for ice point
t2=100;//steam point temperature in degree celcius
p2=8;//thermometric property for steam point
p3=6.5;//thermometric property for any temperature
disp("using thermometric relation")
disp("t=a*log(p)+(b/2)")
disp("for ice point,b/a=")
b=2*log(p1)
disp("so b=2.1972*a")
disp("for steam point")
a=t2/(log(p2)-(2.1972/2))
disp("and b=")
b=2.1972*a
disp("thus, t=a*log(p3)+(b/2) in degree celcius")
t=a*log(p3)+(b/2)
disp("so for thermodynamic property of 6.5,t=302.83 degree celcius")
