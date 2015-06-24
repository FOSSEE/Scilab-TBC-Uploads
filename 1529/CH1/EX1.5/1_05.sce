//Chapter 1, Problem 5
clc;
M=1000;                     //mass in kg
H=10;                       //height in metre
T=20;                       //time in seconds
g=9.81;                     //acceleration due to gravity
F=M*g;                      //calculating force from newtons law of motion
W=F*H;                      //calculating work
printf("(a) Work done = %f kJ\n\n\n",W/1000);
P=W/T;
printf("(b) Power developed = %f kW",P/1000);
