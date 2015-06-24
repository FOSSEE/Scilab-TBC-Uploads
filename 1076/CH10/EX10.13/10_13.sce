clear
clc

Sb=37.5
Vb=33
Zb=Vb*Vb/Sb
Ib= Sb *1e6 / (sqrt(3) *Vb *1e3)
x1=[.18 .12 .1]
x2=[6.3 6.3 12.6]
X2=x2/Zb

X=x1+X2

x=X(1)+X(2)+X(3)

If=3*1/x
IF=If*Ib
mprintf("Fault current is %.1f A", IF)
