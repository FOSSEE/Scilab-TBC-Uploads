//ques2
//Fuel Consumption Rate of a Car
clear
clc
W=65;//power of car engine in hp
n=0.24;//efficiency of car engine
Qh=W/n*2545;//heat of reservoir in Btu/h
r=19000;//output power required in Btu/lbm
m=Qh/r;//rate of burning of fuel required , in lbm/hour
printf('To supply energy at this rate, the engine must burn fuel at a rate of = %.1f lbm/h',m);
