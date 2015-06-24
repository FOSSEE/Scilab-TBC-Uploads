// Initilization of variables
mu=0.5 // coefficient of friction between the belt and the wheel
W=100 //N
theta=45 //degree
e=2.718
Lac=0.75 //m // ength of the lever
Lab=0.25 //m
Lbc=0.50 //m
r=0.25 //m
pie=3.14 // constant
// Calculations
beta=((180+theta)*pie)/180 // radian // angle of lap
// from eq'n 2
T1=(W*Lbc)/Lab //N 
T2=T1/(e^(mu*beta)) //N // from eq'n 1
// consider the F.B.D of the pulley and take moment about its center, we get Braking Moment (M)
M=r*(T1-T2) //N-m
// Results
clc
printf('The braking moment (M) exerted by the vertical weight W is %f N-m \n',M)
