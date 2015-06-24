//Finding core loss
//Example 6.6(pg 214)
clc
clear
v=76300//volume in c.c
P=8// no of poles
N=375//rpm
f=P*N/120//freqency in c/s
Bmax=12000//max. flux density in lines/cm^2
n=0.002//(assumed)
d=7.8//densityin gm/c.c
l=1.7//loss in watts per kg
Hl=n*v*f*(Bmax^1.6)*(10^-7)//Hysteresis loss in Watts
Al=v*d*l/1000//Additional loss under particular running conditions
Tl=Hl+Al//total core loss
printf('Thus the total core loss is %4.0f Watts',Tl)
