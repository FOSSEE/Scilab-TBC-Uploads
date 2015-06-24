
clc
//initialisation of variables
Th=100+20//ft
g=32.2
k1=1.875
k2=9.14
pi=22/7
r=0.25
//CALCULATIONS
k=1/(2*g)
k3=(k+(k1/(k2*k2)))
v=sqrt(Th/k3)
dis=pi*r*r*v/4
//results
printf (' Discharge through pipe= %.2f ft^3/sec ',dis)
