clc
clear
//INPUT DATA
p=0.95*10^5;//Atmospheric air 
tw1=20//Wet bulb temperature in Degree c
t1=31;//Dry bulb temperature in Degree c
pv2=0.02339*10^5;//vapour pressure in mm of Hg
hv1=2556.3;//Enthalpy corresponds tovapour inlet in kJ/kg w.v
hv2=2538.1;//Enthalpy corresponds tovapour outlet in kJ/kg w.v
h6=83.96;//sensible heat of water in kJ/kg w.v
m=1;//mass flow rate in kg.d.a.
cp=1.005;//specific pressure
t1=30;//temperature in K
t2=20;//temperature in K
ps1=0.0425;//Saturation pressure in bar

//CALCULATIONS
ha1=m*cp*t1;//Enthalpy of air per kg of dry air in kJ/kg d.a
ha2=m*cp*t2;//Enthalpy of air per kg of dry air in kJ/kg d.a
w2=0.622*(pv2/(p-pv2));//Specific humidity in kg w.v./kg d.a
w1=(w2*(hv2-h6)+(ha2-ha1))/(hv1-h6);//Specific humidity in kg w.v./kg d.a
pv1=0.01759485/1.01759485;//vapour pressure in bar
x=(pv1/ps1)*100;//realtive humidity in percentage

//OUTPUT
printf('(a)Humidity ratio is %3.4f kg w.v./kg d.a \n (b)Vapour pressure is %3.5f bar \n relative humidity is %3.2f percentage \n (c) According to steam tables Dew point temperature is 14.5 Degree c ',w1,pv1,x)






