clc
clear
//input
m=40//mass
g=9.8//acceleration due to gravity
E=2*10^11//youngs modulus
//calculation
t1=m*g/5//principle of momentum
t2=4*m*g/5 //principle of momentum
d=4*(t2-t1)/(4*%pi*10^-6*E)//difference in length
//output
printf("the difference is %3.0e m",d)
