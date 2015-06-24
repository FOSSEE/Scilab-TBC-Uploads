//Initilization of variables
d=3 //ft
W=300 //lb
theta=20 //degrees
F=250 //lb
t=6 //s
vo=0 //ft/s
g=32.2 //ft/s^2
//Calculations
//Applying linear impulse momentum theorem
//Solving by matrix method
A=[-W/g,1*t;-(0.5*(W/g)*d^2*0.5^2)/(d/2),-t*d/2]
B=[-F*t+W*sind(theta)*t;-F*(d/2)*6] 
C=inv(A)*B
//Result
clc
printf('The speed after 6s is %f ft/s',C(1)) 
