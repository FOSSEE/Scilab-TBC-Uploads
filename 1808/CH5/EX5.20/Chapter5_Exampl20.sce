clc
clear
//INPUT DATA
p3=60;//pressure in bar
p2=7.33;//pressure in bar
p1=1;//pressure in bar
n=1.35;//index of expansion and compression
d1=0.1;//diameter in m
l1=0.1125;//stroke length in m
t1=288;//temperature in K
N=250;//speed in rpm
Ns=2;//no.of stages
t5=303;//temperature in K
R=0.287;//gas constant

//CALCULATONS
val=(3.14*d1^2*l1*N)/4;//volume of air at atmospheric condition
m=p1*10^2*val/(R*t1);//mass of air required in kg/min
ipt=(n/(n-1))*p1*10^2*(val/60)*(((p2/p1)^((n-1)/n))-1)+(n/(n-1))*R*t5*(val/60)*(((p3/p2)^((n-1)/n))-1);//Power required for motor in kW
d2=sqrt((d1*100)^2*(t5/t1)*(p1/p2));//diameter of the high pressure cylinder in cm

//OUTPUT
printf('(i)Power of the compressor is %3.3f kW \n (ii)diameter of the high pressure cylinder is %3.2f cm',ipt,d2)
