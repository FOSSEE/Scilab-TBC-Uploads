clc
clear
//INPUT DATA
va=30;//volume in m^3
p1=1;//pressure in bar
p2=16;//pressure in bar
n=1.32;//index of expansion and compression
N=320;//speed of the copressor in rpm
t1=300;//temperature in K
t2=312;//temperature in K
c=0.04;//clearance
nm=0.8;//mech efficiency in percentage

//CALCULATIONS
va1=p1*va*t2/(t1*p1);//volume in m^3/min
nv=(1+c-c*(((p2/p1)^(1/n))));//volumetric efficiency in percentage
vs=va1/nv;//swept volume in m^3/min
d=((vs*4/(3.14*1.2*N*4))^(1/3))*100;//dimensions of the cylinder in cm
l=1.2*d;//dimensions of the cylinder in cm
ip=(n/(n-1))*p1*10^2*(va1/30)*(((p2/p1)^((n-1)/n))-1);//Power required for motor in kW
mp=ip/(2*nm);//Power required for motor in kW

//OUTPUT
printf('(i)Dimensions of the cylinder bore %3.2f cm \n stroke %3.2f cm \n  (ii)Power required for the motor is %3.2f kW',d,l,mp)

