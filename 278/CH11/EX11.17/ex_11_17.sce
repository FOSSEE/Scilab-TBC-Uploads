//find size of bolts
clc
//solution
//given
//ref fig 11.42
n=8
d=1.6//m
r=0.8//m
D=2//m
R=1//m
W=100000//N
e=5//m
ft=100//N/mm^2
L=e-R//m
//let dc be core dia
pi=3.14
Wt=(2*W*L*(R+r))/(n*(2*R^2+r^2))//N
printf("the max load acting is,%f N\n",Wt)
dc=sqrt((W*4)/(pi*ft))//mm
printf("the core dia is,%f mm\n",dc)
printf("the standard value of core dia is 31.093 from table 11.1")