clc
clear
disp('example 14.6')
rc=10000 //rated capacity
r=2   //regulation in all units
li=0.02 //load increase
f=50  //frequency
d=rc/(2*f) //d=partial derevative with respect to frequency
dd=d/rc
b=dd+1/r
m=li*rc/2
mpu=m/rc
df=-mpu/b 
dff=-mpu/dd
cf=abs(df*d)
inc=-(df/r)*10^4
printf("the contribution of frequency drop to meet increase in load %.3fMW \nincrease in generation cost Rs%.2f",cf,inc)