clc
//Initialization of variables
h=10 //m
g=9.81 //m/s^2
f1=0.019
f2=0.021
f3=0.020
z1=300 //m
z2=150 //m
z3=250 //m
d1=0.3 //m
d2=0.2 //m
d3=0.25 //m
//calculations
disp("part(a)")
Vbyg=h/(f1*z1/d1 +f2*z2/d2 *(d1/d2)^4 + f3*z3/d3 *(d1/d3)^4)
V1=sqrt(2*g*Vbyg)
Q=%pi/4 *d1^2 *V1
printf("\n Flow rate = %.3f m^3/s",Q)
disp('Part b')
Le2=z2*f2/f1 *(d1/d2)^5
Le3=z3*f3/f1 *(d1/d3)^5
Le1=z1
Le=Le1+Le2+Le3
V1byg=h*d1/Le/f1
V2=sqrt(2*g*V1byg)
Q1=%pi/4 *d1^2 *V2
printf("\n Flow rate = %.3f m^3/s",Q1)
