
clc
//initialisation of variables
A=32//ft^2
b=6//ft
d=4//ft
c=2//ft
k=0.29
sl=10//ft per mile
//CALCULATIONS
wp=b+2*sqrt(d^2+c^2)
m=A/wp
C=157.5/(1+(k/(sqrt(m))))
v=C*sqrt(m*sl/5280)
Q=A*v
//RESULTS
printf (' quantity= %.f ft^3/sec',Q)
