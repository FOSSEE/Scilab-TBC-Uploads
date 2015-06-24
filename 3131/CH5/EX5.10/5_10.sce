clear all; clc;
disp("Ex 5_10")
disp("Free body diagram is as shown in fig 5-18b")
disp("Summing forces in X-direction:")
disp("C_y*sin30+B_y*sin30-A_x=0   ...... (1)")
disp("Summing forces in Y-direction:")
disp("-300+C_y*cos30+B_y*cos30=0   ...... (2)")
disp("Summing moments about A:")
disp("-B_y*2+4000-C_y*6+300*cos30*(8)=0   ...... (3)")
disp("Solving (2) and (3) simulatneously")
disp("B_y = -1000.0 N = -1 kN")
disp("C_y = 1346.4 N = 1.35 kN")
disp("Putting these values of B_y and C_y in (1):")
a=-1000
b=1346.4
p1=30
p=p1*%pi/180
c=b*sin(p)+a*sin(p)
printf('\n\n A_x = %0.0f N', c)
