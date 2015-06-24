clc
clear
disp('example14.9')
c=4000 //capacity of system
f=50  //frequency //operatingload=rated area capacity
h=5   //time constent
r=0.025  //
dl=0.01 //change in load
df=0.01 //change in frequency
rr=r*f //
d=(dl*c)/(df*f) 
dpu=d/c
kp=1/dpu
tp=(kp)*(2*h/f)
tt=(rr+kp)/(rr*tp)
sfe=(kp*rr*dpu)/(rr+kp)
ki=(1+(kp/r))^2/(4*tp*kp)
printf("df=-%.5f(1-e^(-%.1f)) \n ki=%.4fp.u.MW/Hz",sfe,tt,ki)
