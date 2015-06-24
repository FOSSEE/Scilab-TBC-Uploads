//Initilization of variables
r_m=2.338 //in
d_m=3.25 //in
mu=0.06 //coefficient of friction
P=1500 //lb
p=1/4 //pitch
//Calculation
phi=atand(mu) //degrees
beta=atand(p/(2*%pi*r_m)) //degrees
M=P*r_m*tand(phi+beta)+mu*P*(d_m/2) //lb.in
//Result
clc
printf('The moment required is %flb-in',M)
//Decimal accuracy causes discrepancy in answers
