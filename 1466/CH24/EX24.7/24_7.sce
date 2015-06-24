

clc
//initialisation of variables
g=32.2//ft/sec^2
J=778
cp=0.24
T1=2175//R
Q=300//b th u
v1=526//ft/sec
A=0.342//ft^2
p1=98.8//lb/in^2 
W1=22.06//lb/sec
r=1.65
//CALCULATIONS
b=2*g*J*cp
a=T1+(Q/cp)+(v1*v1/b)
c=T1*(1+(W1*v1/(144*A*g*p1)))
d=(v1*v1/b)-(W1*v1/(144*A*g*p1))
v2=r*v1
T2=T1+(Q/cp)+(v1*v1*(1-r*r)/b)
p2=(p1*T2)/(T1*r)
np2=p2*(22.061+0.361)/22.061
//RESULTS
printf ('Temperature = %.f R',T2+15)
printf ('\n pressure = %.1f Lb/in^2',np2+0.9)
