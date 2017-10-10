//find
clc
//solution
//given
W=5000//N
dx=40//mm
t1=850//N/mm^2
t2=850//N/mm^2
C=6
G=80000//N/mm^2
//ref fig 23.22
//D1-D2=2*d1
//D1=C*d1
//D2=C*d2
//d1/d2=1.5
//W1/W2=2.25....eq1
//W1+W2=W....eq2
//from 1 and 2,we get
W1=3492//N
W2=1538//N
K1=(4*C-1)/(4*C-4)+(0.615/C)
K2=K1
//d1=(K1*8*W1*C/(%pi*t1))^(0.5)
d1=10
printf("dia of spring wires is,%f mm\n",(K1*8*W1*C/(%pi*t1))^(0.5))
printf("dia is ,say 10mm\n")
printf("mean outer dia is,%f mm\n",6*d1)

D1=6*d1
printf("dia of spring wires is,%f mm\n",(K2*8*W2*C/(%pi*t2))^(0.5))
printf("dia is ,say 6 mm\n")
d2=6
printf("mean outer dia is,%f mm\n",6*d2)
D2=6*d2
//n1=(8*W1*C^3)/(dx*G*d1)
printf("number of turns are in outer coil,%f \n",1/[(8*W1*C^3)/(dx*G*d1)])
printf("numbr of turns are say 6\n")
n1=6
n1b=n1+2
Ls1=n1b*d1
n2b=n1b*d1/d2
n2=n2b-2
printf("numbr of tuns in inner coil is,%f \n",n2)
fL=Ls1+dx+0.15*dx
printf("free length is,%f mm\n",fL)
printf("outr dia of outr spring is,%f mm\n",D1+d1)
printf("innr dia of outr spring is,%f mm\n",D1-d1)
printf("outer dia of innr spring is,%f mm\n",D2+d2)
printf("innr dia of innr spring is,%f mm\n",D2-d2)