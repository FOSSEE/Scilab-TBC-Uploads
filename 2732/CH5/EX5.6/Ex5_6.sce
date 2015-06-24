clc
//initialization of variables
clear
P=10 //tonne
E=2*10^6 //kg/cm^2
// calculations
// We have to solve linear system Ax=B
A=[1 1 1 0
   3 1 -3 0
   -2 2 0 -E
   0 -1 2 -E]
B=[P*10^3;0;0;0]
x=inv(A)*B
W1=x(1,1)/1000
W2=x(2,1)/1000
W3=x(3,1)/1000
th=x(4,1)
//results
printf('The load taken by each rod is %.2f tonne, %.1f tonne, %.3f tonne',W1,W2,W3)
printf('\n and the slope is theta = %.2e. radians',th)   
