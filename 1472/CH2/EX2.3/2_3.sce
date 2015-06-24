clc
//Initialization of variables
b=11 //in
s=15 //in
l=2.4 //in
k=80 //psi per in
//calculations
a=%pi*b^2 /4
L=s/12
Pm=1.6/l *k
W=Pm*a*L
//results
printf("Net work done = %d ft lb",W)
