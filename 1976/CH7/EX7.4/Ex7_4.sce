
//To determine the time taken by the train to attain a particular speed
//Page 366
clc;
clear;
M=200; //Mass of train
g=9.81; //Acceleration due to gravity
W=M*g;
RI=10/100; //Rotational Inertia
We=W*(1+RI);
motor=4; //Number of Motors
Tm=5000; //Torque per motor
T=Tm*motor;
V=40; //Speed to be Attained
N=0.9; //Gear Efficiency
Y=3.6/1; //Gear Ratio
R=91.5*(10^-2)/2;
Ft=N*T*Y/R;
r=40;
G=(1/200)*100; //Gradient in Percentage
a=poly(0,'a'); //Acceleration

X=((28.3*We*a)+(10*W*G)+(M*r))-Ft; //Polynomial Equation to find acceleration

a=roots(X); //Numerical Value of Acceleration
Time=V/a; //Time Taken to attain the required the necessary speed

printf('The Time Taken by the Train to attain 40 Kmphs is %g seconds\n',Time)
