//Finding the Circuit values of a programmable UJT triggering circuit
//Example 17.3(Page No-776) 
clc
clear
//given data 
Vs=30//V
Ig=1*10^-3//A
f=60//Hz
tg=50*10^-6//sec
Vrk=10//V
T=1/f//time period
Vp=Vrk//peak triggering voltage
C=0.5*10^-6//F (assume)
Rk=tg/C
printf('value of Rk:%.2f ohm\n',Rk)
n=Vp/Vs
printf('intrinsic ratio n:%.2f\n',n)
r=1/(f*C*log(Vs/(Vs-Vp)))
R=r*10^-3
printf('R:%.1f ohms\n',R)
Rg=Vs*(1-n)*10^-3/Ig//in kilo-ohms
printf('Rg:%d kohms\n',Rg)
R1=Rg/n//in kiloohms
R2=Rg/(1-n)//in kiloohms
printf('R1:%d kohms\n',R1)
printf('R2:%d kohms\n',R2)
