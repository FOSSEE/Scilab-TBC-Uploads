//Example 9-2,Page No - 324

clear
clc

R = 100*10^3
T = 273+25
B = 20*10^3
k = 1.38*10^-23

Vn=(4*k*T*B*R)^0.5

printf('The noise voltage across 100k resistor is %.2f microvolt',Vn*10^6)
