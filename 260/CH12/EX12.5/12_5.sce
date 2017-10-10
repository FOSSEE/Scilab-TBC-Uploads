//Eg-12.5
//pg-515

clear
clc

x = [0;0.5;1.2];
T = [450;388;325];

//The derivative can be computed using the equation [19]
//Therefore the derivative at x = 1

D = ((2-0.5-1.2)/((0-0.5)*(0-1.2)))*450 + ((2-0-1.2)/((0.5-0)*(0.5-1.2)))*388 + ((2-0-0.5)/((1.2-0)*(1.2-0.5)))*325;

printf('The value of derivative at x = 1 is %f',D)
