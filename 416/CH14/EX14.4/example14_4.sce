clc
clear
disp('example14.4')
rc=10000 //rated capacity
r=2   //regulation in all units
li=0.02 //load increase
f=50  //frequency
d=rc/(2*f) //d=partial derevative with respect to frequency
d=d/rc
b=d+1/r
m=li*rc/2
mpu=m/rc
df=-mpu/b 
dff=-mpu/d
printf("static frequency drop %fHz \nfrequency drop %dHz",df,dff)
