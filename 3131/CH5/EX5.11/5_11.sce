clear all; clc;
disp("Ex 5_11")
disp("Free body diagram is as shown in fig 5-22b")
a=0.7
b=0.4
c1=atan(a/b)
c=c1*180/%pi
printf('\n\n Theta = %0.1f degrees', c)
disp("Summing forces in X-direction:")
disp("F_A*cos60.3-F*cos45+400=0   ... (1)")
disp("Summing forces in Y-direction:")
disp("F_A*sin60.3-F*sin45=0   ... (2)")
disp("Solving (1) and (2) simulatneously")
disp("F_A = 1.07 kN")
disp("F = 1.32 kN")
