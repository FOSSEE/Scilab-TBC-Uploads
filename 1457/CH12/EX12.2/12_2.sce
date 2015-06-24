clc
//Initialization of variables
d=2 //in
g=32.2
d1=3 //in
k=1.06
//calculations
A2=%pi/4 *d^2 /144
dp=d/12
Q=k*A2*sqrt(2*g*dp)
A=%pi/4 *(d1/12)^2
V1=Q/A
K2=1.04
Q2=K2/k *Q
//results
printf("Flow rate = %.4f cfs",Q2)
