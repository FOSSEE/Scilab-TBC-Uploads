
clc
//initialisation of variables
clear
g=1.4 //gamma-const value
p1=4.5 //pressure in bar
p3=1.1 //pressure in bar
cp=1.005 //kj/kgk
rho4=0.5405 //density
rho3=0.9725 //density
t1=1023 //temparature in k
t2=852.16 //temparature in k
r=0.287 //cp-cv=const value
m=0.5 //mass
ieff=0.85 //isentropic efficiency
R= 8.314 
//CALCULATIONS
p2=0.528*p1
t2=0.833*t1
c2=44.72*(cp*(t1-t2))^(0.5)
rho2=p2*100/(R*t2)
a2=m/(rho3*c2)
t3=t2*(p3/p2)^((g-1)/g)
t4=t2-(ieff*(t2-t3))
c3=44.72*(cp*(t1-t4))^(0.5)
rho3=p2*100/(R*t4)
a3=m/(rho4*c3)
//RESULTS
printf('throat area is %2fm*m',a2)
printf('\nvelocity at exit,area at exit are %2fm/s and %2fm*m',c3,a3)
