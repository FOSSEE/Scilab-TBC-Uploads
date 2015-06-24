
clc 
clear
//Input data
tw3=30;//The inlet temperature of water in degree centigrade
wc=1.15;//Mass flow rate of cooling water in kg per kg air
tdb1=20;//The dry bulb temperature of air in degree centigrade
R1=60;//Relative humidity of air while entering in percentage
tdb2=28;//The dry bulb temperature while leaving in degree centigrade
R2=90;//Relative humidity of air while leaving in percentage
tm=20;//The temperature of makeup water in degree centigrade
Cpc=4.187;//The specific heat of water in kJ/kgK
G=1;//Mass flow rate of dry air in kg/s

//Calculations
twb1=15.2;// from psychrometric chart The wet bulb temperature while entering in degree centigrade
twb2=26.7;// from psychrometric chart The wet bulb temperature while leaving in degree centigrade
h1=43;//The enthalpy from chart for dry air in kJ/kg dry air
h2=83.5;//The enthalpy from chart in kJ/kg dry air
W1=0.0088;//Humidity in kg water vapour/kg dry air
W2=0.0213;//Humidity in kg water vapour/kg dry air
hw3=125.8;//Enthalpy of water entering the tower in kJ/kg
hw=84;//Enthalpy of makeup water in kJ/kg
hwc=[(G/wc)*[(h2-h1)-(W2-W1)*hw]];//The change in enthalpy of water in kJ/kg
tw4=tw3-(hwc/Cpc);//The exit temperature of water in degree centigrade
ta=tw4-twb1;//The approach temperature in degree centigrade
tr=tw3-tw4;//The range temperature in degree centigrade
x=G*(W2-W1);//Fraction of water evaporated in kg/kg dry air

//Output
printf(' (a) The temperature of water leaving the tower = %3.1f degree centigrade \n (b) The fraction of water evaporated = %3.4f kg/kg dry air \n (c) The approach of the cooling tower = %3.1f degree centigrade \n   The Range of the cooling tower = %3.1f degree centigrade ',tw4,x,ta,tr)

