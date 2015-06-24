clear
clc

I1=100
I2=150
I3=200

l1=150
l2=100
l3=100

r=.1/1000
U=1

Va=200

rac=l1*r;
rcd=l2*r
rbd=l3*r

Iac= I1+I2+I3 + U*(l1+l2+l3)
dvc=(Iac - (.5* U * l1))*rac;
Vc=Va-dvc

Icd= I2+I3 + U*(l2+l3)
dvd=(Icd - (.5* U * l2))*rcd ;
Vd=Vc-dvd

Idb= I3 + U*(l3)
dvb=(Idb - (.5* U * l3))*rbd ;
Vb=Vd-dvb

mprintf("voltage at B= %.3f V  C= %.3f V  D= %.3f V ", Vb, Vc, Vd)
