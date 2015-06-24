//Chapter-7,Example7_1,pg 7-13
N=100
B=0.15
A=10*8*10^-6
I=5*10^-3
Td=N*B*A*I//deflecting torque
K=0.2*10^-6//spring const.
theta=Td/K//deflecting angle
printf("deflection theta=%.2f deg",theta)
