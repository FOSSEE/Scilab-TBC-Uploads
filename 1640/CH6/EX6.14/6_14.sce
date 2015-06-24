clc
//Initialization of variables
B=48 //ft
D=5 //ft
f=0.005
i=1/1000
g=32.2
//calculations
C=sqrt(2*g/f)
m=B*D/(B+2*D)
V=C*sqrt(m*i)
Q=B*D*V
Dc=(Q^2 /(g*B^2))^(1/3)
d1=2.25 //ft
Q1=1*D*V
d2=-d1/2 + sqrt(2*Q1^2 /(g*d1) + d1^2 /4)
hd=d2-d1
//results
printf("height required = %.3f ft",hd)
//The answer is a bit different due to rounding off error in textbook
