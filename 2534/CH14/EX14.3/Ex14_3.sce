//Ex14_3
clc
Rf = 10*10^3//feedback resistance
R1 = 10*10^3//resistance 1
R2 = 2*10^3//resistance 2
v1 = 10//input voltage across resistance 1
v2 = 4//input voltage across resistance 2
//note: according to the given fig. in the textbook for the question we have:

vo = -Rf*((v1/R1)+(v2/R2))//output voltage of adder circuit
disp("Rf = "+string(Rf)+"ohm")
disp("R1 = "+string(R1)+"ohm")
disp("R2 = "+string(R2)+"ohm")
disp("v1 = "+string(v1)+"V")
disp("v2 = "+string(v2)+"V")
disp("vo = -Rf*((v1/R1)+(v2/R2)) = "+string(vo)+"V")
