
clc
clear
//Input data
ws=250;//The amount of steam received by the surface condenser in t/h
tsat=40;//The saturated temperature in degree centigrade
m=12;//The amount of moisture present in the steam in percentage
tc1=32;//The inlet temperature of cooling water in degree centigrade
tc2=38;//The outlet temperature of cooling water in degree centigrade
p=0.078;//The pressure inside the condenser in bar
V=1.8;//velocity of circulating water in m/s
do=0.0254;//The outer diameter of the condenser tubes in m
T=0.00125;//The thickness of the condenser tubes in m
pi=3.141;//Mathematical constant of pi
U=2.6;//The overall heat transfer coefficient in kW/m^2K
Cpc=4.187;//The specific heat of water in kJ/kgK
R=0.287;//Real gas constant in kJ/kgK
P=1000;//The density of water in kg/m^3

//Calculations
x2=0.88;//The quality of the steam
hfg=2407;//The enthalpy of evaporation at 40 degreeC in kJ/kg
h=x2*hfg;//The change in enthalpy in kJ/kg
di=do-(2*T);//The inner diameter of the condenser tubes in m
wc=[[(ws*1000)/3600]*h]/(Cpc*(tc2-tc1));//Mass flow rate of water in kg/s
psat=0.07375;//The saturated pressure at 40 degree centigrade in bar
pair=(p-psat)*100;//The pressure of air in kPa
vf=0.001008;//Specific volume of saturated liquid in m^3/kg
vfg=19.544;//Specific volume of vapour in m^3/kg
v2=vf+(x2*vfg);//Specific volume at 40 degree centigrade in m^3/kg
wair=[pair*[(ws*1000)/3600]*v2]/(R*(tsat+273));//Mass flow rate of air in kg/s
t1m=(8-2)/log(8/2);//The mean temperature in degree centigrade
Ao=[[(ws*1000)/3600]*h]/(U*t1m);//The area of the tubes in m^2
n=(wc*(4/pi)*(1/di^2)*(1/(P*V)));//The number of tubes
l=Ao/(pi*do*n);//Yhe  length of tubes in m

//Output
printf('(a) The rate of flow of cooling water = %3.1f kg/s \n (b) The rate of air leakage into the condenser shell = %3.3f kg/s \n (c) The length of tubes = %3.2f m \n (d) The number of tubes = %3.0f ',wc,wair,l,n)





