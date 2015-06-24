//Example  7.2// power required
clc;
clear;
close;
format('v',6)
l=0.2;//length in meter
w=0.1;//width in meter
th=25;//thickness in mm
vw=l*w*th*10^-3;//volume in m^3
ww=600;//weight of wood in kg/m^3
ww1=vw*ww;//weight of wood kg
shw=1500;//specific heat of wood in J/kg/degree celsius
t=200;//temperature in degree celsius
rg=t*shw*ww1;//energy in joules
h=(rg/(3.6*10^3));//Wh
t=15;//time in minutes
pr=h*(60/t);//power required in Watt
disp(pr,"power required is,(W)=")
