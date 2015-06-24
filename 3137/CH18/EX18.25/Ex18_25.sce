//Initilisation of variables
d=2/12 //ft
v=80 //ft/s
g=32.2 //ft/s^2
//Calculations
//Mass flow reate without time
m=(1/4)*%pi*d^2*v*(62.4/g) 
//Let P=force of plate on mass m of water
P=m*(0-v) //lb
//Result
clc
printf('The force water exerts on the plate is %f lb',-P ) 
