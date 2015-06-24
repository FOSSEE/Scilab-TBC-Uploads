//Example  7.3// voltage and current
clc;
clear;
close;
l=0.2;//length meter
w=0.1;//width in meter
th=25;//thickness in mm
vw=l*w*th*10^-3;//volume of wood in m^3
ww=600;//weight of wood in kg/m^3
ww1=vw*ww;//weight of wood kg
shw=1500;//specific heat of wood  in J/kg/degree celsius
t=200;//temperature in degree celsius
rg=t*shw*ww1;//energy in joules
h=(rg/(3.6*10^3));//Wh
t=15;//time in minutes
pr=h*(60/t);//power required in Watt
eo=8.854*10^-12;//permittivity constant
er=5;//permittivity of wood
c=((eo*er*l*w)/(th*10^-3));//capacitance in Farads
f=50;//frequency in MHz
pf=0.5;//power factor 
ph=acosd(pf);//phase angle degree
v=sqrt((pr)/(c*2*%pi*f*10^6*0.05));//voltage in volts
disp(round(v),"voltage is ,(V)=")
ic=v*2*%pi*f*10^6*c;//current in amperes
disp(ic,"current is,(A)=")
