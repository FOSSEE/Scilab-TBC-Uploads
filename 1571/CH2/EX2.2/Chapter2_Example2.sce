clc
clear

//INPUT
p1=23.5;//pressure when immersed in liquid air in cm
p2=75;//pressure when immersed in ice in cm
p3=102.4;//pressure when immersed in steam in cm
T=100;//boiling point of temperature in deg.C

//CALCULATIONS
t=(p1-p2)*T/(p3-p2);//temperature of the liquid air in deg.C

//OUTPUT
mprintf('the temperature of liquid of air is %3.2f deg.C',t)
