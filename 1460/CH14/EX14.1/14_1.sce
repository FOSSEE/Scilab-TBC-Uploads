clc
//initialization of variables
T=50 //F
Q=3.9 //B/hr-ft^2
//calculations
disp("From table 14.1")
k=0.026 //B/hr-ft-F
dx=k*T/Q
//results
printf("Required thickness = %.3f ft",dx)
