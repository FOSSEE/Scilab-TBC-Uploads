clc
//Initialization of variables
p1=0 //Pa
p2=0 //Pa
V1=0 //m/s
V2=0 //m/s
Zdif=10 //ft z2-z1
f=0.02
D=6/12 //ft
l=200 //ft
K_L=0.5+1.5+1.0
g=32.2 //ft/s^2
eta=66.5
A=%pi*D^2/4
Q=poly(0,'Q')
V=Q/A
hp=Zdif + (f*l/D+K_L)*V^2/(2*g)
sol=roots(hp-eta)
Q=sol(1)*7.48*60 //ft^3/s to gallons/min
printf('Q = %d gal/min',Q)
