//Initilization of variables
mw=75 //kg
k=0.9 //m
wi=10 //rad/s
wf=6 //rad/s
r=1.2 //m
m=30 //kg
g=9.8 //m/s^2
//Calculations
//Initial speed
vi=-r*wi //m/s
vf=r*wf //m/s
//Initial speed of B is
vib=-0.8*wi+vi //m/s
//Similarly
vfb=12 //m/s
//Applying impulse momentum theorem
//Solving by matrix method
A=[1,-1,-(mw*(vf-vi));0.8,1.2,-(mw*(k^2)*(wf+wi));-1,0,-(m*(vfb-vi))]
B=[0;0;-g*m]
C=inv(A)*B
//Here t is calculated as 1/t for simplicity
//Result
clc
printf('The time required is %f s',1/C(3)) 
//Decimal accuracy causes discrepancy in answers
