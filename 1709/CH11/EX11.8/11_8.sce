clc
//Initialization of variables
Kp=15.63
y=Kp
//calculations
x=poly(0,"x")
vec=roots(x^2 + y*x^2 - y)
eps=vec(1)
x1=(1-eps)/(1+eps)
x2=eps/(1+eps)
x3=eps/(1+eps)
//results
printf(" Equilibrium concentration of Cs = %.4f ",x1)
printf("\n Equilibrium concentration of Cs+ = %.4f ",x2)
printf("\n Equilibrium concentration of e- = %.4f ",x3)
//the answers are a bit different due to approximation in textbook
