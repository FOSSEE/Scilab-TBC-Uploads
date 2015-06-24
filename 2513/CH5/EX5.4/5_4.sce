clc
//initialisation of variables
p=100000//in
d=150//in
h=1000000//in
a1=2.0//draft
a2=3.0//draft
a3=1.6//draft
m=1.5//in
q=2.5//in
v=1020//in
w=100//in
t=0.01//in
v1=13.2//mgd
//CALCULATIONS
A=d*p/h//mgd
M=m*A//mgd
M1=q*A//mgd
V=v*sqrt(w)*(1-t*sqrt(w))//gpm
D=M+v1//mgd
L=a1*A//mgd
L1=(4/3)*M//max
H=a2*A//mgd
H1=(4/3)*M1//max
F=a3*A//mgd
F1=(4/3)*M//max
//RESULTS
printf('the resulting capacities of the four system =% f max',F1)
