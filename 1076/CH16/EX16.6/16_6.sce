clear
clc

l1=100
l2=250
l3=400
r=.25/1000
l=.125/1000

I1=100
I2=120
I3=80

pf1=.7
pf2=1
pf3=.8

phi1=acos(pf1)
phi2=acos(pf2)
phi3=acos(pf3)

Z1=l1 * ((r*cos(phi1))+(l*sin(phi1)))
Z2=l2 * ((r*cos(phi2))+(l*sin(phi2)))
Z3=l3 * ((r*cos(phi3))+(l*sin(phi3)))

V=240

dv=(Z1*I1)+(Z2*I2)+(Z3*I3)
Ve=V-dv

mprintf("\nVoltage at end is %.2f V, drop = %.2f V", Ve, dv)
