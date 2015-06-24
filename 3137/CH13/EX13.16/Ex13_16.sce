//Initilization of variables
m1=14 //kg
m2=7 //kg
theta=45 //degrees
u_1=1/4 //coefficient of friction between mass 1 and plane
u_2=3/8 //coefficient of friction between mass 2 and plane
g=9.8 //m/s^2
//Calculations
//The equations of motion for m1 are
N1=m1*g*cosd(theta) //N
F1=u_1*N1 //N
//The equations of motion for m2 are
N2=m2*g*cosd(theta) //N
F2=u_2*N2 //N
//Now to get T and a we solve using matrix method
A=[-1,-m1;1,-m2]
B=[-(m1*g*sind(theta)-F1);-(m2*g*sind(theta)-F2)]
C=inv(A)*B
//Result
clc
printf('The Value of T is %fN',C(1))
