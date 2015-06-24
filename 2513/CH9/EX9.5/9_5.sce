clc
//initialisation of variables
Q=350//gpm
x=225//ft
t=1//min
p=1.6//ft
t2=10//min
p2=4.5//ft
p3=700//gpm
T=3.2*10^4//gpd/ft
t0=0.3//min
u=1.15*10^-5
//CALCULATIONS
S=t0*(T)*t0/[(x)^2*1440]//ft
P=[(114.6*p3)/(T)]*(-0.5772*2.3*log(u))//ft
//RESULTS
printf('A straight line being drawn through the ppints for the higher=% f ft',P)
