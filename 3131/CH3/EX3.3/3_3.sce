clear all; clc;
disp("Ex 3_3")
disp("Equilibrium Equations")
disp("T_EG*sin(30) - T_EC*cos(45) = 0 ....(1)")
disp("T_EG*cos(30) - T_EC*sin(45) - 20N = 0 ....(2)")
disp("Solving both the eqns simultaneously,")
disp("T_EC = 38.6 N")
disp("T_EG = 54.6 N")
disp(" ")
disp("Equilibrium Equations")
disp("38.6*cos(45) (4/5)*T_CD = 0 ....(3)")
disp("(3/5)*T_CD + 38.6*sin(45) - W_B = 0 ....(4)")
disp("Solving eqn (3) we get the value of T_CD")
a1=45
a=a1*%pi/180
b=38.6*cos(a)
c=b*5
d=c/4
printf('\nT_CD = %0.1f kN',d)
disp(" ")
disp("Putting the above value of T_CD in eqn (4), we get the value of W_B")
e=(3/5)*d+38.6*sin(a)
printf('\nW_B = %0.1f kN',e)
