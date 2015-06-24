clc
clear
//Input data
h1=3000;//Specific enthalpy of steam at inlet in kJ/kg
h2=2762;//Specific enthalpy of steam at the outlet in kJ/kg
v1=0.187;//Specific volume of steam at inlet in m^3/kg
v2=0.498;//Specific volume of steam at the outlet in m^3/kg
A1=0.1;//Area at the inlet in m^2
q=0;//There is no heat loss
z=0;//The nozzle is horizontal ,so no change in PE
c1=60;//Velocity of the steam at the inlet in m/s

//Calculations
c2=[(2*1000)*((h1-h2)+(c1^2/2000))]^(1/2);//Velocity of the steam at the outlet in m/s
m=(A1*c1)/v1;//Mass flow rate of steam in kg/s
m1=m*3600;//Mass flow rate of steam in kg/hr
A2=(m*v2)/c2;//Area at the nozzle exit in m^2

//Output
printf('(a)Velocity of the steam at the outlet c2 = %3.2f m/s \n (b)Mass flow rate of steam m = %3.3f kg/s  (or) %3.2f kg/hr \n (c)Area at the nozzle exit A2 = %3.4f m^2 ',c2,m,m1,A2)
