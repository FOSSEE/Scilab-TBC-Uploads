clc
clear
//INPUT DATA
t1=40;//dry bulb temperature in Degree c
t2=30;//dry bulb temperature in Degree c
x1=0.2;//realtive humidity in percentage
tw2=20;//wet bulb temperature in Degree c
ps1=55.31;//Saturation temperature in mm Hg
ps2=31.81;//Saturation temperature in mm Hg
pv2a=17.521;//Saturation temperature at WBT in mm Hg
p=760;//pressure in mm of Hg
Ra=287.3;//gas constant
V1=150;//volumme in m^3


//CALCULATIONS
pv1=x1*ps1;//Saturation temperature in mm Hg
w1=0.622*(pv1/(p-pv1));//Specific humidity in kg w.v./kg d.a
pv2=(pv2a-((p-pv2a)*(t2-tw2)*1.8)/(2800-(1.3*(1.8*t2+32))));//Saturation pressure in mm Hg
x2=(pv2/ps2)*100;//realtive humidity in percentage
w2=0.622*(pv2/(p-pv2));//Specific humidity in kg w.v./kg d.a
v1=Ra*(273+t1)/((p-11.06)*133.5);//volume
ma=V1/v1;//Amount of air added in kg d.a./min
mw=ma*(w2-w1);//Amount of water vapour added in kg d.a./min
nh=((t1-t2)/(t1-tw2))*100;//humidifier efficiency in percentage

//OUTPUT
printf('(a)From chart Dew point temperature is corresponds to pv2 is 14.5 Degree c \n (b)Amount of water vapour added is %3.3f kg w.v./min \n (c)Humidifier efficiency is %3.1f percentage',mw,nh)

