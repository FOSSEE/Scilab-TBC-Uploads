clc 
//initialisation of variables
Qt= 150000 //cuses
i= 1/10000
n1= 1
n2= 2/3
d1= 30 //ft
C1= 100
C2= 75
b1= 600 //ft
b2= 2000 //ft
r= 2
A1= (b1+d1)*d1
P1= b1+(2*d1*sqrt(2))
m1= A1/P1
v1= C1*sqrt(m1*i)
Q1= A1*v1
Q2= Qt-Q1
v2= v1/2
A2= Q2/v2
d2= (-b2+sqrt(b2^2+4*1.5*A2))/(2*1.5)
//RESULTS
printf ('depth of water = %.f ft ',d2)
