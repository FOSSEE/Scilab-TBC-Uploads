clc
clear
//INPUT DATA
t=30;//dry bulb temperature in Degree c
x=30;//realtive humidity in percentage
p=760;//pressure in mm of Hg
p2=0.04246*10^5;//pressure in N/m^2
V=100;//volume in m^3
Rv=0.461;//vapour constant
Ra=0.2871;//gas constant

//CALCULATIONS
ps=(p2/133.5);//pressure in mm of Hg
pv=0.3*ps;//vapour pressure in mm of Hg
pa=p-pv;//air pressure in mm of Hg
w=(0.62*(pv/(p-pv)));//Specific humidity in kg w.v./kg d.a
ws=(0.62*(ps/(p-ps)));//Specific humidity in kg w.v./kg d.a
m=w/ws;//Degree of saturation
mv=pv*133.5*V/(Rv*(t+273)*1000);//Mass of vapour in kg.w.v.
ma=pa*133.5*V/(Ra*1000*(t+273));//Mass of dry air in kg.d.a.

//OUTPUT
printf('(a)Partial pressure of dry air vapour is %3.3f mm Hg \n (b)Dew point temperature is 10.62 Degree c \n (c)Specific humidity %3.4f kg w.v./kg d.a \n (d)Degree of saturation is %3.3f \n (e)mass of vapour is %3.4f kg.w.v.\n (f)mass of dry air is %3.4f kg.d.a',pa,w,m,mv,ma)
 
