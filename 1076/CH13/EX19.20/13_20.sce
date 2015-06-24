clear
clc

f=50
G=20
V=13.2
H=9
nP=4

J=G*H
mprintf("\n(a)Stored Energy = %.0f MJ", J)
disp("The unit is incorrectly mentioned as "'mJ'' in the textbook.");

Pi= 25*.735
P=15
Pa=Pi-P
M=G*H/(180*f)
a=Pa/M
mprintf("\n(b)Acceleration = %.2f elec deg/sec sq",a )


c=15
t=c/f
dd=.5*a*t*t
mprintf("\n(c)change in angle = %.2f deg",dd )

A=a * 60 / (180*nP)
Ns=120*f/nP
N=Ns+(A*t)
mprintf("\n(d)New speed = %.3f rpm",fix(N*1000)/1000 )
