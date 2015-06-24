// Example 1.1 page no-4
clear
clc

//(1)
V=10
d=5*10^-2
t=50*10^-9
T=10^-7
x=1.76*10^11
eps=V/(d*T)
a=x*eps
v=a*t^2/2
printf("\n(1)\nVelocity, v = %.1f*10^5 m/s\n",v/100000)

//(2)
x1=(a/6)*(t^3)
printf("\n(2)\ndistance, x=%f cm\n",x1*100)

//(3)
x2=0.05
t1=(x2/(a/6))^(1/3)
v1=(a/2)*t1^2
printf("\n(3)\nspeed with which the electron strikes the positive plate,\nv = %.2f*10^6 m/sec",v1/10^6)
