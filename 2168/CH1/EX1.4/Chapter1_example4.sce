clc
clear
//Input data
IHP=45//Indicated horse power in h.p
Fc=13//Fuel consumption in litres/hr
g=0.8//Specific gravity of oil
nm=80//Mechanical efficiency in percent
CV=10000//Calorific value of fuel in kcal/kg

//Calculations
BHP=(IHP*nm)/100//Brake horse power in h.p
hi=(Fc*g*CV)//Heat supplied in kcal/hour
In=((IHP*4500*60)/(427*hi))*100//Indicated thermal efficiency in percent
Bn=(In*(nm/100))//Brake thermal efficiency in percent

//Output
printf('Indicated thermal efficiency is %3.2f percent \n Brake thermal efficiency is %3.2f percent',In,Bn)
