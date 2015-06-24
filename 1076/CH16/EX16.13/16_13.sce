clear
clc

V=250

L=[
150 50 80 40 70 60 50 150 
0 20 60 95 120 130 150 180 
]

r=.1/(2*500)

D=L(1,:)
I1=L(2,:)'
I2=ones(8,1)

dv1=2*r*D*I1
dv2=2*r*D*I2

Ia=dv1/dv2
Ib=L(length(L))-Ia

Vc=V-(2*r*((Ia*D(1))+((Ia-I1(2))*D(2))+((Ia-I1(3))*D(3))))
mprintf("Ia= %.2f A, Ib= %.2f A, Vmin at C = %.3f V",Ia, Ib, Vc)
