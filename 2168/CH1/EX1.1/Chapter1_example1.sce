clc
clear
//Input data
BHP=51//Brake horse power in h.p
N=1000//Speed in r.p.m
FHP=17//Friction horse power in h.p

//Calculations
IHP=(BHP+FHP)//Indicated Horse power in h.p
mn=(BHP/IHP)*100//Mechanical efficiency in percent

//Output
printf('Mechanical efficiency of the engine is %i percent',mn)
