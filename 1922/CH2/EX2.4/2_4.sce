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
disp("case a")
disp("Using vandwerwaals equation, ")
disp("(P+a/v^2)*(V-b) = R*T, on solving by trail and error method,")
V=3
printf("Volume = %d m^3/kmol",V)
