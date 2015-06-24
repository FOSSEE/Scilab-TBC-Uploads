clc
//Initialization of variables
k=1.4
R=1773
v=600 //fps
T=660 //K
P=100 //psia
cp=6210
g=32.2
//calculations
c=sqrt(k*R*T)
M=v/c
rho=k*P*144/c^2
Ps=P*144 + 0.5*(rho)*v^2 *(1+ 0.25*M^2)
Ts= (cp/g *T + v^2 /(2*g))*g/cp
//results
printf("Stagnation pressure = %d lb/ft^2",Ps)
printf("\n Stagnation temperature = %d R",Ts)
disp("Please check the units of the answer.")
