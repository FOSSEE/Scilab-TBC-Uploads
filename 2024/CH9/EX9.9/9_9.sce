clc
//Initialization of variables
k=1.4
D2=1.820
D1=6.065
p2=20.18 //psia
p1=30 //psia
g=32.2
G=13.59 
zm=20
R=1545/29
C=0.68
T=520 //R
//calculations
dp=0.03609*G*zm
rp=p2/p1
bet=D2/D1
v1=R*T/(p1*144)
A2=%pi*D2^2 /(4*144)
m=C*A2/sqrt(1 - bet^4 *rp^(1.43)) *sqrt(2*g*k*p1*144/(k-1)/v1 *(rp^(2/k) - rp^((k+1)/k)))
//results
printf("Mass flow rate = %.3f lbm/sec",m)
//The answer is a bit different due to rounding off error in textbook
