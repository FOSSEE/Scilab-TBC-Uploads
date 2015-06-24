// Example 1.6 page no-20
clear
clc

m=9.1*10^-31  //kg
V=100
e=1.6*10^-19 //C
d=5*10^-2  //m
t=10^-8   //sec
d1=(e*V*t^2)/(m*d*2)
d2=(5-d1*100)
printf("\nd1=%.3f*10^-2m\nd2=%.2f*10^-2m",d1*100,d2)
t1=0.01*10^-6///sec
v1=e*V*t1/(m*d)
v1=ceil(v1/10^4)
printf("\nVelocity of Electron,v=%.2f*10^6m/s",v1/100)
t2=(d2*10^-2)/(v1*10^4)
printf("\nt2=%.1f*10^-8 sec",t2*10^8)
printf("\nTotal transit time =t1+t2=%.1f*10^-8 sec",(t1/10^-8)+t2*10^8)
