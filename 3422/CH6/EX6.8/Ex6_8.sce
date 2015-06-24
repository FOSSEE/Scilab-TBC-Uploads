//Example 6.8, page 141
clc
//part a
w=(2*%pi*50)/3//angular f, rad/sec
k=6000/w
kw=6000//n-m, initial brakin torque
Tf=300//n-m, fictional torque
j=540//kg-m2
tr=(j/k)*log((kw+Tf)/Tf)
//disp(tr)
s=%e^((-k*tr)/j)
//disp(s)
temp=((j/k)*(kw+Tf)*(1-s))-((Tf*tr))
Nr=(1/(2*%pi*k))*temp
//disp(Nr)
printf("Time taken for rheostatic braking is %f s",Nr)
//part b
beta=3600/j
motor_rest_time=w/6.67
//disp(motor_rest_time)
rev=(1000/60)*.5*(motor_rest_time)
printf("Number of revolutions made is %f",rev)