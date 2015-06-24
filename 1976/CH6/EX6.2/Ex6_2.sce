
//To determine the total radiation sent vertically downward from a lamp of 1500 cp
//Page 327
clc;
clear;

//Candle power of the lamp
P=1500;

//Since the flux required corresponds to the one that lies in a plane passing through the lamp vertically downwards the angle is given by
Angle= %pi; // Angle in radians

Flux=P*Angle;

printf('The total radiation sent vertically downward is %g lumens \n',Flux)

