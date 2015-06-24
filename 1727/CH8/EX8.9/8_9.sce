clc
//Initialization of variables
b1=8 //m
b2=5 //m
y=5 //m
b5=15 //m
b3=3 //m
b4=3 //m
y2=2 //m
y3=3 //m
n1=0.025
n2=0.035
sf=0.0008
//calcuations
A= (b1+b2)*y
P= b1+ sqrt(b2^2 +y^2) + sqrt(b3^2 +b4^2)
R=A/P
Q1=1/n1 *A*R^(2/3) *sf^(1/2)
A2 = b5*y2 - 0.5*y2*y2 + 0.5*y3*y2
P2= b5 + sqrt(b4^2 + y3^2)
R2=A2/P2
Q2= 1/n2 *A2*R2^(2/3) *sf^(1/2)
Q=Q1+Q2
//results
printf("Total discharge = %.1f m^3/s",Q)
