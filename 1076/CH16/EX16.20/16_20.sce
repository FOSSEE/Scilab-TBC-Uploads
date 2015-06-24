clear
clc

rho=1/58

l1=90
l2=90
l3=100
l4=80
l5=90
l6=90
l7=90

I1=50
I2=40
I3=20
I4=30
I5=45
I6=50

I=I1+I2+I3+I4+I5+I6
L=l1+l2+l3+l4+l5+l6+l7
Ia=((I1*l2)+((I1+I2)*l3)+((I1+I2+I3)*l4)+((I1+I2+I3+I4)*l5)+((I1+I2+I3+I4+I5)*l6)+((I1+I2+I3+I4+I5+I6)*l7))/L

Ib=I-Ia
V=230*2
V1=440

dv=V-V1

r=dv/((Ia*(l1+l2+l3+l4))-((I1*l2)+((I1+I2)*l3)+((I1+I2+I3)*l4)))

a=rho*2/r

mprintf("crossection area (in mm sq)= %.2f", a)
