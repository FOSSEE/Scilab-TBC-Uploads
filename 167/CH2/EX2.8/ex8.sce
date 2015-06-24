// example 8
// Power Needs of a Car to Climb a Hill
clear
clc
m=1200 //mass of car in kg
v1=90 //velocity of car in km/h
v2=90*5/18 //velocity of car in m/s
x=30 //slope of hill in degrees
g=9.8 //acc. due to gravity in m/s^2
w=m*g*v2*sin(%pi*30/180) //additional power to be delivered by engine in watts
printf("\n Hence,additional power to be delivered by engine is = %.0f kW. \n",w/1000);