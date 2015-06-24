clc
//Initialization of variables
y0=2.17 //ft
q=400/10 
g=32.2
d=4.8 //ft
S0=0.0016
//calculations
yc=(q^2 /g)^(1/3)
y2=y0/2 *(-1 + sqrt(1+ 8*q^2 /(g*y0^3)))
y1=d/2 *(-1 + sqrt(1+ 8*q^2/(g*d^3)))
E1=y0 + (q/yc)^2 /(2*g)
E2= y1+ (q/y1)^2 /(2*g)
Vm=0.5*(q/yc + q/y1)
Rm=0.5*(y0/1.434 + y1/1.552)
S=(0.013*Vm/(1.49*Rm^(2/3)))^2
dx=(E1-E2)/(S-S0)
E1d=E2
E2d=d+ (q/4.8)^2 /(2*g)
HPl=62.4*q*10*(E1d-E2d)/550
//results
printf("Power loss = %.2f ",HPl)
//The answer is a bit different from the textbook due to rounding off error
