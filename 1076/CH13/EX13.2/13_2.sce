clear;
clc

P=4
f=50
G=200
H=6
J=G*H
mprintf("\n(a)stored energy = %.0f MJ",J)

Pl=120
Pl1=160
Pa=Pl-Pl1
M=J/(180*f)
a=Pa/M
mprintf("\n(b)acceleration = %.0f elec deg/ sec sq",a)

c=5
t=c/f
dd=.5*a*t*t
N=120*f/P
a=a*60/(180*P)
Nn=N+(a*t)
mprintf("\n(c)change in power angle = %.1f elec deg, change in speed = %.1f rpm",dd,Nn)

G2=150
H2=4
Gb=100
Heq=((G*H)+(H2*G2))/Gb
mprintf("\n(d)Equivalent inertia constant = %.0f MJ/MVA",Heq)
