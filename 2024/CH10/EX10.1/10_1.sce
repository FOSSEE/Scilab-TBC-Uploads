clc
//Initialization of variables
m1=10 //lbm
m2=15 //lnm
p=50 //psia
t=60+460 //R
M1=32
M2=28.02
R0=10.73 
//calculations
n1=m1/M1
n2=m2/M2
x1=n1/(n1+n2)
x2=n2/(n1+n2)
M=x1*M1+x2*M2
R=R0/M
V=(n1+n2)*R0*t/p
rho=p/(R0*t)
rho2=M*rho
p1=x1*p
p2=x2*p
v1=x1*V
v2=x2*V
//results
disp("part a")
printf("Mole fractions of oxygen and nitrogen are %.3f and %.3f respectively",x1,x2)
disp("part b")
printf("Average molecular weight = %.1f ",M)
disp("part c")
printf("specific gas constant = %.4f psia ft^3/lbm R",R)
disp("part d")
printf("volume of mixture = %.1f ft^3",V)
printf("density of mixture is %.5f mole/ft^3 and %.2f lbm/ft^3",rho,rho2)
disp("part e")
printf("partial pressures of oxygen and nitrogen are %.2f psia and %.2f psia respectively" ,p1,p2)
printf("\n partial volumes of oxygen and nitrogen are %.2f ft^3 and %.2f ft^3 respectively",v1,v2)
