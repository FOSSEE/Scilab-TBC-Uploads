//find max torque
clc
//solution
//given
l=1000//mm
Imax=80//N/mm^2
s=15//mm
//let T be max toque
T=Imax*s*l^2/(4.242)//N-mm
printf("the value of max torque is,%f N-mm",T)