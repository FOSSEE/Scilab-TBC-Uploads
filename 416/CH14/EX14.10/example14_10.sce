clc
clear
disp('example14.10')
tg=0.2 //time constent of steam turbine
t=2 //time constant of turbine
h=5 //inertia constent
r=0.04  //given
dl=0.01  //change in load
df=0.01  //change in frequency
c=1500  //capacity
f=50  //frequency
adl=0.01 //max allowable change in load
printf("\ntransfer function of governor gr= 1/(1+%.1f*s) \n transfer function of turbine gt=1/(1+%d*s)",tg,t)
rr=r*f
d=(dl*c)/(df*f)
dpu=(d/c)
kp=(1/dpu)
tp=(kp*(2*h)/(f))
printf("\ntransfer function of power system \n Gp=(%d/(1+%d*s)\n Df=-gp/(1+(0.5*(gr*gt*gp)))",kp,tp)
ddf=-(kp)/(1+kp/r)
dff=df*f
m=dff/(ddf)
mm=m*c
disp('(b)')
printf("\nthe largest step in the load if the frequency change by more than %.2f in steady state %dMW",adl,mm)
if mm<0
    printf("\nthe minu sign is becose of the that if frequency is to increase by %f \nthe change in load be negative.",adl)
else
    printf("\nthe largest step in load if the frequency is to decrease by %f /n the change in load be positive",adl)
end
disp('(c)')

disp('when integral controller is used,static frequency error is zero')