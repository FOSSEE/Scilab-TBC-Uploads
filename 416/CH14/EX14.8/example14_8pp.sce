clc
clear
disp('example 14.8')
c=4000//capacity
f=50  //frequency
ol=2500 //operating load
r=2   //speed regulation
h=5  //inertial constant
dl=0.02 //change in load
df=0.01  //change in frequency
dff=-0.2 //change in steady state frequency
d=(dl*ol)/(df*f) //
dpu=d/c  //din pu
b=dpu+(1/r)
m=-dff*b
printf("largest chang in load is %.3fp.u.MW=%dMW",m,m*c)
kp=(1/dpu)
tp=(kp)*2*h/f
tt=(r+kp)/(r*tp) //time constant 
printf("\ndf=(dff)(1-e^%f*t)",tt)

