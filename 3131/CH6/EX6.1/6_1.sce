clear all; clc;
disp("Ex 6_1")
a1=45
a=a1*%pi/180

// At joint B , Summing forces along X and Y directions:
F_BC=500/sin(a)
disp("At joint B:")
printf('\n\n F_BC = %0.1f N (C)',F_BC)
F_BA=F_BC*cos(a)
printf('\n\n F_BA = %0.0f N (T)',F_BA)

// At joint C , Summing forces along X and Y directions:
disp("At joint C:")
F_CA=F_BC*cos(a)
printf('\n\n F_CA = %0.0f N (T)',F_CA)
Cy=F_BC*sin(a)
printf('\n\n Cy = %0.0f N ',Cy)

// At joint A , Summing forces along X and Y directions:
disp("At joint A:")
Ax=500
printf('\n\n Ax = %0.0f N',Ax)
Ay=500
printf('\n\n Ay = %0.0f N',Ay)

