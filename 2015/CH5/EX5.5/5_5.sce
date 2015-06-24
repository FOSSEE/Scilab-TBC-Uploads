
clc
//initialisation of variables
clear
t1=593 //temparature in k
p2=1.05 //pressure in bar
p1=7 //pressure in bar
cp=1.005
p3=3.696 //pressure in bar
r=0.287 //kj/kgk
a=6.25*10^-4
g= 32.2 //ft/sec^2
R= 8.314
//CALCULATIONS
t2=t1*(p2/p1)^((g-1)/g)
c2=44.72*(cp*(t1-t2))^(0.5)
rho2=p2*100/(r*t2)
m2=rho2*c2*a
t3=t1*(p3/p1)^((g-1)/g)
c3=44.72*(cp*(t1-t3))^(0.5)
rho3=p3*100/(R*t3)
a3=m2/(rho3*c3)
//RESULTS
printf('exit velocity and mass flow rate are %2fm/s and %2fkg/s',c2,m2)
printf('\nthroat area is %2fm*m',a3)
