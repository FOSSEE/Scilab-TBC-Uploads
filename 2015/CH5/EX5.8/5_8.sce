
clc
//initialisation of variables
clear
t1=323 //temp in k
c1=300 //velocity in m/s
c2=100 //velocity in m/s
cp=1.005 //kj/kgk
p1=10 //pressure in bar
p3=14 // pressure in bar
g= 32.2 //ft/sec^2
//CALCULATIONS
t2=t1+(((c1)^2)+(c2)^2)/(2*cp)
p2=p1*(t2/t1)^(g/(g-1))
t2=t1*(p3/p1)^((g-1)/g)
h3=cp*t2
x=(0.5*((c1)^2-(c2)^2))/1000 //x=h2-h1
h1=cp*t1
eff=(h3-h1)/(x)
//RESULTS
printf('diffuser efficiency is %2f',eff)
