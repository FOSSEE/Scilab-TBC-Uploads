
clc
stroke=4//in
d=11.5//in
ds=4//in
dp=14//in
theta=%pi
u1=.25
T1=350//lb
u2=0.1
k=%e^(u1*theta)
T2=T1/k
Tor=(T1-T2)*(dp/2)//total resisting torque
//total resisting torque is also given by P*(r+2*(cos%pi/6))+u2*R*(ds/2)
//equating and putting values we get the following quadratic equation
p=[1 -1.163D3 3.342D5]
a=roots(p)
printf("\nP=%.1f",a)
printf("\nThe larger of two values is inadmissible. \n It corresponds to a negative sign in front of the second term on the \n right hand side of equation (1)")
