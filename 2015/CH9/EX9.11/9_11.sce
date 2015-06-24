
clc
//initialisation of variables
r=0.287
p=1.01325 //pressure in bar
v=5 //volume in m*m*m
t=288 //temparature in k
t1=303 //temparature in k
t2=403 //temparature in k
p2=4.08 //pressure in bar
p1=0.98 //pressure in bar
p3=17 //pressure in bar
n=1.25
c=0.06 //clearance volume by swept volume
//CALCULATIONS
m=(p*v)/(r*t)
rp=p2/p1
t2s=(t1*(p2/p1)^((n-1)/n))
wr=(n/n-1)*r*(t2-t1)
wc=2*wr
veff=(1+c-c*(rp)^(1/n))
x=(p*100*v*t1)/(p1*100*t) //x=(v1-v4)
vs=x/veff
vsc=vs/125
d1=((4*vsc)/%pi)^(1/3)
//RESULTS
printf('volumetric efficiency is %2f',veff)
printf('\nstoke volume is %2fm*m*m/min',vs)
printf('\nstroke volume per cycle is %2fm*m*m',vsc)
printf('\nstoke of piston is %2f',d1)
