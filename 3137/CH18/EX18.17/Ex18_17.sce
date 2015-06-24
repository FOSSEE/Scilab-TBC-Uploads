//Initilization of variables
m1=5 //kg
m2=7 //kg
mp=5 //kg
r=0.6 //m
k=0.45 //m
vi=3 //m/s
vf=6 //m/s
g=9.8 //m/s^2
//Calculations
I=m1*k^2 //kg.m^2
wnet=(vf/r)-(vi/r) //rad/s
//Solving the system of linear equations
//Simplfying the equation we get
t=((I*wnet)+m1*(vf-vi)+m2*(vf-vi))*r/(r*(m2-m1)*g) //s
//Result
clc
printf('The time required is %f s',t)
//Decimal accuracy causes discrepancy in answers

