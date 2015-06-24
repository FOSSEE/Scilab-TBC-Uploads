clear
clc

I1=100
I2=150
I3=200

l1=150
l2=100
l3=100

r=.1/1000

Va=200

rac=l1*r;
rcd=l2*r
rbd=l3*r

dvc=(I1+I2+I3)*rac;
dvd=(I1+I2+I3)*rac + (I2+I3)*rcd ;
dvb=(I1+I2+I3)*rac + (I2+I3)*rcd + (I3*rbd);

Vc=Va-dvc
Vd=Va-dvd
Vb=Va-dvb

mprintf("voltage at B= %.2f V  C= %.2f V  D= %.2f V ", Vb, Vc, Vd)
