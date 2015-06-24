clc
//Initialization of variables
Kp=0.668
y=Kp^2
//calculations
x=poly(0,"x")
vec=roots(x^3 + y*x^3 + 2*y*x^2 -y*x -2*y)
eps=vec(1)
x1=(1-eps)/(1+ eps/2)
x2=eps/(1+eps/2)
x3=eps/2/(1+ eps/2)
//results
printf("degree of reaction = %.3f ",eps)
printf("\n Equilibrium concentration of CO2 = %.3f ",x1)
printf("\n Equilibrium concentration of CO = %.3f ",x2)
printf("\n Equilibrium concentration of O2 = %.3f ",x3)
//the answers are a bit different due to approximation in textbook
