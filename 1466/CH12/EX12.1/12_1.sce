
clc
//initialisation of variables
nw=0.01//cgs units
na=0.00015//cgs units
pw=62.4//lb/ft^3
pa=0.075//lb/ft^3
vw=10//ft/sec
dw=1
da=3
hf1=70//ft
l1=100//ft
g=32.2//ft/sec^2
D=1/12
l2=60//ft
d2=1/4
//CALCULATIONS
va=pw*dw*vw*na/(pa*da*nw)
f=hf1*2*g*D/(4*l1*vw*vw)
hf2=4*f*l2*va*va/(2*g*d2)
//RESULTS
printf (' loss of head= %.f ft of air',hf2)
