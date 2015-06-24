// Example 6.4, page no-231
clear
clc

R=42150      //orbital radius of satellite
oi=0.25/100  // orbit inclination
acc=0.3      //error of 0.3 degree
c=3*10^8     // speed of light
x=oi*R
x=ceil(x*10)/10
y=R*2*%pi*acc/360
y=ceil(y*10)/10
z=sqrt(x^2+y^2)
z=ceil(z*10)/10
delay=z*10^6/c
delay=floor(delay*1000)/1000
pd=2*delay
printf("variation in alitude caused byorbit inclination = %.1fkm\n variation due to station-keeping error of 0.3° = %.1fkm",x,y)
printf("\n Both these errors will introduce a maximum range variation of %.1fkm\n This cause a one-way propagation delay of %.3fms\n Round trip propagation delay =%.2fms\n Dopler Shift = %.2f ms in 8h=56.25 ns/s",z,delay,delay*2,pd)

