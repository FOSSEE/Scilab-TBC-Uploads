clc
clear
//Initialization of variables
basis= 1 //kmol ammonia
P=10^6 //pa
a=4.19
b=0.0373
R=8314.3
Tc=405.5
Pc=11.28*10^6
//calculations
disp("part b")
an=27*R^2*Tc^2 /(64*Pc)
bn=R*Tc/(8*Pc)
V=3
//results
printf("Since an and bn are same as a and b, V is the same = %d m^3/kmol",V)
