//Initilization of variables
m=20 //kg
F1=40 //N
ro=0.6 //m
ri=0.45 //m
g=9.8 //m/s^2
//Calculations
//Moment of inertia
I=(2/5)*m*ro^2 //kg-m^2
//Applying Newtons Law and conservation of angular Momentum
//Solving by matrix method
A=[1,m;ro,-I/ro]
B=[F1;F1*ri]
C=inv(A)*B
//Storing answers in variables
F=C(1) //N
a=C(2) //m/s^2
//Result
clc
printf('The acceleration is %f m/s^2 and F=%f N',a,F)
//The solution in the textbook is incorrect
