clc
clear
//INPUT DATA
p0=1;//suction pressure in bar
p1=1;//pressure in bar
p2=6;//delivery pressure in bar
v0=5;//volume in m^3/min
t0=288;//suction temperature in K
t1=300;//initial temperature in K
k=0.05;//Clearance
n=1.3;//index of compression
N=150;//speed in rpm

//CALCULATIONS
va=(p0/p1)*(t1/t0)*v0;//volume of air delivered in m^3/min
nv=1+k-k*((p2/p1)^(1/n));//volumetric efficiency in percentage
vs=va/nv;//stroke volume in m^3/min
vss=vs/N;//stroke volume per stroke in m^3
d=(vss*4/(3.14*1.25))^(1/3);//diameter in m
l=1.25*d;//length in m
ip=(n/(n-1))*p1*10^2*(va/60)*(((p2/p1)^((n-1)/n))-1);//power required to run the compressor

//OUTPUT
printf('(i)volumetric efficiency is %3.4f percentage \n (ii)stroke volume of air taken in per stroke is %3.5f m^3 \n (iii)Dimensions of the cylinder stroke %3.2f m \nbore %3.2f m \n (iv)power required to run the compressor is %3.3f kW',nv,vss,l,d,ip)

