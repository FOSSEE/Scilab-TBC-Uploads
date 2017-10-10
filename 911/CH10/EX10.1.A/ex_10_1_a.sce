//example 10.1(a)//
clc
//clears the screen//
clear
//clears all variables//
g=2^8;
//for easier calculation//
V=20*(10^-3)*g;
//voltage corresponding to logic 1//
fs=(g-1)/g*V;
//full scale output formula//
disp(fs,'Full scale output (in V) =')
//in volts//