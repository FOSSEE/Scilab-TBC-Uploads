clc
clear
//Input data
BHP=15//Brake horse power in h.p
In=28//Indicated thermal efficiency in percent
mn=75//Mechanical efficiency in percent
CV=10000//Calorific value of fuel in kcal/kg

//Calculations
Bn=((In/100)*(mn/100))*100//Brake thermal efficiency in percent
I=(BHP/(Bn/100))*((4500*60)/427)//Input in kcal/hr
Fc=(I/CV)//Fuel consumption in kg/hr

//Output
printf('Fuel consumption of the engine is %3.2f kg/hr',Fc)
