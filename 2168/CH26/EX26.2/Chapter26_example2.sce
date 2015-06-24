clc
clear
//Input data
CV=10000//Calorific value in kcal/kg
F=1.4//Fuel consumption in kg per hour per kg of thrust
T=900//Thrust in kg
Va=425//Aircraft velocity in m/s
w=19.5//Weight of air in kg/sec

//Calculations
af=(w/((F*T)/3600))//Air fuel ratio
nv=((T*Va*3600)/(427*F*T*CV))*100//Overall efficiency in percent

//Output
printf('Air fuel ratio is %3.1f \n Overall efficiency is %3.1f percent',af,nv)
