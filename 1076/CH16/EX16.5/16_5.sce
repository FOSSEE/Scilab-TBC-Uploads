clear
clc

l=400
l1=100
l2=250
l3=400
r=.25/1000

I1=100
I2=120
I3=80

V=240

dv=r*((l1*I1)+(l2*I2)+(l3*I3))
Ve=V-dv

mprintf("\nVoltage at end is %.0f V, drop = %.0f V", Ve, dv)
