clc
//initialisation
cu=90
fe=12
t1=200//c
t2=0//c
l=0.3//m
a=5*10^-4//m^2
//CALCULATIONS
t=(t1*cu+fe*t2)/(cu+fe)
dt=t1-t
rh=cu*a*dt/0.15
//results
printf(' \n rate of heat flow= % 1f cal/sec',rh)
