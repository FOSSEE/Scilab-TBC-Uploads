
clc
//initialisation of variables
dis=29.7//ft^3/min
H=4//ft
H1=40//ft
pi=22/7
g=32.2//ft/sec^2
l=540//ft
D=0.5//ft
A=36
a=2.25
//CALCULATIONS
v=dis*16/(pi*60)
k1=H*2*g/(v*v)-1
k2=4*l/D
f=k1/k2
k3=4*f*l/D
k4=(A/a)*(A/a)
V1=sqrt(H1*2*g/(k3+k4))
v1=V1*A/a
hp=62.4*0.785*(1/8)^2*v1*v1*v1/(2*g*550)
//RESULTS
printf (' horse power= %.2f.',hp)
