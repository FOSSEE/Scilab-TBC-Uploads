
clc
clear
//Input data
tw3=45;//The temperature of warm water in degree centigrade
wc1=6;//The cooling water inflow in kg/s
V=10;//volume flow of ID fan in m^3/s
Ws=4.90;//Heat absorbed by air in kW
ti=20;//The temperature of air entering the tower in degree centigrade
R=60;//The relative humidity in percentage
to=26;//The temperature of air leaving the tower in degree centigrade
p=1.013;//The constant pressure throughout the tower in bar
r=0.287;//Real gas constant in kJ/kgK
Cpc=4.187;//The specific heat of water in kJ/kgK
Cp=1.005;//The specific heat of air in kJ/kgK

//Calculations
ps=0.0234;//The pressure at 20 degreec in bar
ps1=(R/100)*ps;//The pressure of water vapour in bar
pa1=p-ps1;//The pressure of air in bar
G1=(pa1)/(r*10^-3*(ti+273));//The mass flow rate of dry air in kg/s
w1=(ps1*10^5*V)/(0.4619*10^3*(ti+273));//Mass flow rate of vopour in kg/s
W1=w1/G1;//Moisture flow in kg vap/kg dry air
ps2=0.0336;//The pressure at 26 degree C at exit in bar
pw2=0.0336;//The pressure of water vapour at 26 degree C at exit in bar
W2=(0.622)*(pw2/(1-pw2));//oisture flow in kg vap/kg dry air
G2=G1;//The mass flow rate of dry air in kg/s
w2=W2*G2;//Moisture flow at exit in kg/s
wm=w2-w1;//Makeup water required in kg/s
wc2=wc1-wm;//The cooling water outflow in kg/s
hw3=Cpc*tw3;//The enthalpy of warm water in kJ/kg
hg=2538.1;//The enthalpy of gas at 20 degree C in kJ/kg
tsat=12;//The saturation temperature in degree centigrade
pw1=0.01404;//The pressure at 12 degree C in bar
hw1=hg+(1.88*(ti-tsat));//The enthalpy of warm water in kJ/kg
hw2=2548.4;//The enthalpy of evaporation at 26 degree C in kJ/kg
hw4=[[G1*[(Cp*(to-ti))+W2*hw2-W1*hw1]-Ws]-(wc1*hw3)]/-wc2;//The enthapy of warm water at point 4 in kJ/kg
E=hw4/Cpc;//Exit water temperature in degree centigrade

//Output
printf('(a) The final temperature of the water = %3.2f degree centigrade \n (b)The amount of makeup water required per second = %3.4f kg/s ',E,wm)

