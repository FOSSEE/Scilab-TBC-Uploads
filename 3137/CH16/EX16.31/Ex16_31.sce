//Initilization of variables
a=2.5 //m/s^2
mA=3 //kg
mB=7 //kg
g=9.8 //m/s^2
//Calculations
F=(mA+mB)*a //N
//Using equations of motion
Py=mB*g //N
//Solving for Px and H
A=[1,1;-0.0375,0.0375]
B=[mB*a;Py*0.05]
C=inv(A)*B
Px=C(1) //N
H=C(2) //N
//Result
clc
printf('The value of H is %f N',H)
