//Clearing console
clc
clear

//Intializing variables
x0 = -1
x1 = 1

//Integrating given function
f = [integrate('r^2 -3*r+7','r',x0,x1)]

printf('\nResults')
printf('\nIntegration of given function f =%f',f) 
