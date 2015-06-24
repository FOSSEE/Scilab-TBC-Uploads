clc
//initialisation of variables
h=40//percent
g=30//percent
c=8//percent
n=10//percent
w=6//percent
g1=10//percent
g2=4.14//ft^3
Ch4=4.562//ft^3 of air
Co2=0.44//ft
H2o=1.18//ft^3
N2=3.7//ft63
x=41.4/11//ft63
//CALCULATIONS
T=Ch4+x//ft^3
v=1+T//ft^3
V=x+g2//ft^3
D=v-V//ft^3
P=D/v*100//percent
//RESULTS
printf('the volueme of air suplied per=% f percent',P)
