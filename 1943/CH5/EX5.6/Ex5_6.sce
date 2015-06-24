
clc
clear
//Input data
tb=850;//The bed temperature in degree centigrade
CV=25;//The calorific value of the fuel in MJ/kg
A=9.5;//The stoichiometric air fuel ratio by mass
E=20;//The amount of excess air used in %
F=4.8;//The total fueling rate in MW
p=0.3145;//The density of air at bed temperature in kg/m^3
f=2;//The firing rate in MW/m^2
v=2.7;//The fluidizing velocity in m/s

//Calculations
P=F/f;//Planform area in m^2
m=(F*1000)/(CV*1000);//Fuel burning rate in kg/s
ma=A*(1+(E/100))*m;//Mass flow rate of air in kg/s
Pa=ma/(p*v);//Planform area in m^2

//Output
printf('(a) The planform area = %3.1f m^2 \n (b) Fuel burning rate = %3.3f kg/s \n    Air flow rate = %3.4f kg/s \n    Planform area = %3.2f m^2 ',P,m,ma,Pa)

