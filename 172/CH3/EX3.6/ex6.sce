//example 6
//Determinig the missing property
clear
clc
T1=273-53.2 //given temperature in K
P1=600 //given pressure in kPa
disp('This temperature is higher than the critical temperature (critical temp. at P=600 kPa) is 96.37 K.Hence,v=0.10788 m^3/kg')
T2=100 //given temp. in K
v2=0.008 //given specific volume in m^3/kg
vf=0.001452 //in m^3/kg
vg=0.0312 //in m^3/kg
Psat=779.2 //saturation pressure in kPa
vfg=vg-vf //in m^3/kg
x=(v2-vf)/vfg //quality
printf("\n hence, the pressure is Psat = %.1f kPa. \n",Psat)
printf("\n and quality is x = %.4f . \n",x)