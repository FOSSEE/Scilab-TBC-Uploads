//Example 1.12 // power required
clc;
clear;
close;
format('v',10)
l=0.5;//length in meter
b=0.25;//breadh in meter
h=0.02;//in meter
t1=25;// temperture °C
t2=125;// temperture °C
t=10;//time in minutes
f=30;//frequency in 30 MHz
w=600;//weight of the wood in kg/m^3
sh=1500;//specific heat in J/Kg/°C
e=50;//efficiency
vp=l*b*h;//volume in m^3
wp=vp*w;//weight of plywood in kg
hr=sh*wp*(t2-t1);//heat required in joules
hrt=(hr/(3600));//heat required to raise the temperture of plywood in Wh
pu=hrt/(1/6);//power utilized in watts
pi=(pu/e)*100;//power input required in percentage
disp(pi,"power input required ,(W)=")

