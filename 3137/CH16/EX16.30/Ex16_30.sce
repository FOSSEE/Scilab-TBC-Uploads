//Initilization of variables
u=0.2 //coefficient of friction
ma=1.2 //kg
mb=2 //kg
g=9.8 //m/s^2
//Calculations
Nb=mb*g //N
F=u*Nb //N
//Using equations of motion
//Solving for T and a
A=[-1,-ma;1,-mb]
B=[-ma*g;F]
C=inv(A)*B
T=C(1) //N
a=C(2) //m/s^2
//Taking the sum of the moments
x_m=-(F*0.15+T*0.15)/Nb //m
x=x_m*1000 //mm
//Result
clc
printf('The acceleration of block A is %f m/s^2 and Nb acts at a distance %f mm\n Negative sign indictaes that the side assumed is incorrect',a,x)
