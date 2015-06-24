//Finding frequency
//Example 15.33(pg. 414)
clc
clear
rho=5*(10^-5)//specific resistance for steel in ohm-cm
U=1//relative permeability
d=0.15//depth of penetration in cm
f=(rho*(10^9))/(U*d*d*4*(%pi^2))//frequency required in cycles per sec
f1=f/1000//frquency in k.cycles/sec
printf('Thus the frequency required is %3.3f k.cycles/sec',f1)
