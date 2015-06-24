clear all; clc;
disp("Ex 5_9")
disp("Free body diagram is as shown in fig 5-17b")
disp("Summing forces in X-direction:")
disp("A_x-52*(5/13)+30*cos60=0")
disp("A_x=5.00 N")
A_x=5// force component in N
disp("Summing forces in Y-direction:")
disp("A_y-52*(12/13)-30*sin60=0")
disp("A_y=74 N")
A_y=74// force component in N
disp("Summing moments about A:")
disp("M_A-52*(12/13)*0.3-30*sin60*0.7=0")
disp("M_A = 32.6 Nm")
F_A=sqrt(A_x^2+A_y^2)
printf('\n\n The resultant force on wrench is F_A = %0.2f N',F_A)
t=atan(A_y/A_x)//theta in radian
theta=t*180/%pi
printf('\n\n Directional sense of force components is theta = %0.1f degrees, measured in anti-clockwise direction from positive X-axis',theta)
