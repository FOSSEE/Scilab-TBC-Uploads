clc
clear
//Initalization of variables
pa=14.7 //psia
p1=12 //psia
t1=560 //R
n=1.4 //gamma
J=778 //constant conversion
g=32.2 //ft/s^2
cp=0.24 //heat capacity
eff=0.7 //efficiency
m1=1.8 
m3=1 
//calculations
t5=t1*(pa/p1)^((n-1)/n)
v4=sqrt(2*g*J*cp*(t5-t1)/eff) 
v3=(m1+m3)/m1 *v4
//results
printf("Velocity of air = %.1f ft/s",v3)
