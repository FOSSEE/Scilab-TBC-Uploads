//Example 1.4 // loading in kW and efficiency of the tank
clc;
clear;
close;
format('v',5)
a=6;//area in m^2
l=a/6;//one side of tank in meter
V=l*l*l;//volume in m^2
e=90/100;//capacity
wh=6*e*1000;//water to be heated daily in kg
s=4200;//specific heat of water in J/Kg/degree celsius
t1=65;//in degree celsius
t2=20;//in degree celsius
hr=wh*s*(t1-t2)*10^-6;//heat required to raise the temperture of water
hr1=hr/3.6;//heat required in kWh
d=6.3;//difference in watts
l=((d*a*(t1-t2)*24)/1000);//losses from the surface of the tank in kWh
es=hr1+l;//energy supplied in kWh
lk=es/24;//loading in kW
ef=(hr1/es)*100;//efficiency of the tank in percentage
disp(lk,"loading in kW")
disp(ef,"efficiency of the tank in percentage")
