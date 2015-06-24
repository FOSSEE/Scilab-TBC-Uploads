clear all; clc;
disp("Ex 3_2")
//Cable CA supports the  weight of the engine 2.452kN
//Concurrent System of forces
disp("Equilibrium Equations")
disp("T_B*cos(30) - T_D = 0 ....(1)")
disp("T_B*sin(30) - 2.452kN = 0 ....(2)")
disp("Solving eqn (2) we get the value of T_B")
a=2.452
b1=30
b=30*%pi/180
c=a/sin(b)
printf('\n\nT_B = %0.2f kN',c)
disp(" ")
disp("Putting the above value of T_B in eqn (1), we get the value of T_D")
d=c*cos(b)
printf('\n\nT_D = %0.2f kN',d)
