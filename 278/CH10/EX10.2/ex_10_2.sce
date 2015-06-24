//find the max torque 
clc
//solution
//given
d=50//mm
s=10//mm
Imax=80//N/mm^2
pi=3.14
//let T be max toque
//Imax=(2.83*T)/(pi*s*d^2)
T=Imax*pi*s*d^2/(2.83)//N-mm
printf("the value of max torque is,%f N-mm",T)