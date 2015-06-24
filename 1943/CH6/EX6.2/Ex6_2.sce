
clc
clear
//Input data
t=60;//The temperature of water while supplying it to desuperheater in degree centigrade
ws=200;//The amount of steam carrying in a steam line in t/h
p=35;//The pressure of steam in bar
ts=400;//The temperature to be maintained by the steam in degree centigrade
to=450;//The outlet temperature of the steam from boiler in degree centigrade
h1=3337.2;//The enthalpy of steam at 450 degree C in kJ/kg
h2=252;//The enthalpy of water at 60 degree C in kJ/kg
h3=3222.3;//The enthalpy of steam at 400 degree C in kJ/kg

//Calculations
w=(ws*(h1-h3))/(h3-h2);//Mass flow rate of water in t/h
w1=w*(1000/3600);//Mass flow rate of water in kg/s

//Output
printf('The amount of water that must be sprayed is %3.3f t/h  or  %3.3f kg/s ',w,w1)
