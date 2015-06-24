//Ex14_4
clc
Rf = 1*10^3//feedback resistance
R1 = 1*10^3//resistance 1
R2 = 1*10^3//resistance 2
R3 = 1*10^3//resistance 3
v1 = 2//input voltage 1
v2 = 1//input voltage 2
v3 = 3//input voltage 3
vo = -Rf*((v1/R1)+(v2/R2)+(v3/R3))//output voltage of adder circuit
disp("Rf = "+string(Rf)+"ohm")
disp("R1 = "+string(R1)+"ohm")
disp("R2 = "+string(R2)+"ohm")
disp("R3 = "+string(R3)+"ohm")
disp("v1 = "+string(v1)+"V")
disp("v2 = "+string(v2)+"V")
disp("v3 = "+string(v3)+"V")
disp("vo = -Rf*((v1/R1)+(v2/R2)+(v3/R3)) = "+string(vo)+"V")
