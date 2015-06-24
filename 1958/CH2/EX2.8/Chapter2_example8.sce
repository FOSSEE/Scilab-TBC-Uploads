clc
clear
//Input data
m=50//Mass of the object in kg
v=8//Speed in m/s
t=4//Time taken in s

//Calculations
a=(v-0)/t//Acceleration in m/s^2
s=(v^2/(2*a))//Distance in m
W=(m*a*s)//Workdone in J
P=(W/t)//Power delivered in watt

//Output
printf('Workdone on the object is %i J \n The average power delivered by the force in the first %i s is %i watt',W,t,P)
