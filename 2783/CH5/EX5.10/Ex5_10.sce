clc
//initialization of new variables
clear
h=20 //m
D1=0.3 //m upto 50 m distance
D2=0.2 //m
K=0.1
L1=50 //m
L2=100 //m
f=0.015
g=9.8 //m/s^2
//calculations
u3=sqrt(h*2*g/(1+f*L1/D1*(D2/D1)^4+K*(D2/D1)^4+f*L2/D2))
S3=%pi*D2^2/4
Q=u3*S3
//results
printf('Average discharge velocity is %.2f m/s',u3)
printf('\n The corresponding flow rate is %.2f m/s',Q)
