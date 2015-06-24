clc
//Initialization of variables
dz=260 //ft
ke=0.5
f=0.02
l=5000 //ft
D=10 //in
A2=0.545
//calculations
V2by2g=dz/(1 + ke + f*l/(D/12))
V2=V2by2g*2*32.2
V=sqrt(V2)
DV=D*V
Q=%pi/4 *(D/12)^2 *V
//results
printf("Flow rate = %.2f cfs",Q)
