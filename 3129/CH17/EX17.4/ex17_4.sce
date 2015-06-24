//Finding the minimum width of a gate pulse for a thyristor converter
//Example 17.4(Page No-777) 
clc
clear
//given data
Ih=500*10^-3//holding current in A
td=1.5*10^-6//delay time in sec
a=30*%pi/180//alpha is a delay angle in radians
L=10*10^-3//load L in H
R=10//load R in ohms
V=120//supply voltage in V
f=60//supply freq in Hz
Vm=sqrt(2)*V//maximum voltage value in V
wt=a
V1=Vm*sin(wt)
di=V1/L//di is rate of rise of anode current at instant of triggering
t1=Ih/di//time req by current to reach to holding current value
tg=(t1+td)*10^6//in microsec
printf('minimum width of gate pulse tg:%.2f microsec\n',tg)
