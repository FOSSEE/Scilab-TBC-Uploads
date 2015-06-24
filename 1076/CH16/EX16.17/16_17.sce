clear
clc

I1=100
I2=50
I3=50
I4=100
I5=0

L=500
l1=50
l2=100
l3=100
l4=150
l5=L-l1-l2-l3-l4

R=.075
r=R/L
U=1

Va=230

r1=l1*r;
r2=l2*r
r3=l3*r
r4=l4*r
r5=l5*r

Ia= I1+I2+I3+I4+I5 + U*(l1+l2+l3+l4+l5)
dvab=(Ia - (.5* U * l1))*r1;
Vb=Va-dvab

Ib= Ia- (U*(l1)) - I1
dvbc=(Ib - (.5* U * l2))*r2;
Vc=Vb-dvbc

Ic= Ib- (U*(l2)) - I2
dvcd=(Ic - (.5* U * l3))*r3;
Vd=Vc-dvcd

Id= Ic- (U*(+l3)) - I3
dvde=(Id - (.5* U * l4))*r4;
Ve=Vd-dvde

Ie= Id- (U*(l4)) - I4
dvef=(Ie - (.5* U * l5))*r5;
Vf=Ve-dvef

mprintf("voltage at B= %.4f V  C= %.4f V  D= %.4f V  E= %.2f V  F= %.1f V ", Vb, Vc, Vd,Ve, Vf)
