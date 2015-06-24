//Initilization of variables
m=200 //kg
g=9.8 //m/s^2
r=1.2 //m
F1=1000 //N
F2=1400 //N
//Calculations
N=m*g //N
I=(2/5)*(m)*r^2 //kg-m^2
//Using equations of motion
//Solving for F and alpha using matrix method
//Applying equations of motion
A=[1,-m;-r,-I/r]
B=[F1-F2;F1*r]
C=inv(A)*B 
//Storing values
F=C(1) //N
alpha=C(2) //rad/s^2
a=r*alpha //m/s^2
//Result
clc
printf('The value of a is %f m/s^2 and F is %f N',a,F)
//The negative signs indicate that the direction is opposite to what was origninally assumed
