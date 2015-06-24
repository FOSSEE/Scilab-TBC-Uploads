clear;
clc;
disp('Example 9.5');

//  aim : To determine 
//  the rate of energy transfer between furnace and the sphere and its direction

//  Given values
l = 1.25;// internal side of cubical furnace, [m]
ti = 800+273;// internal surface temperature of the furnace,[K]
r = .2;// sphere radious, [m]
epsilon = .6;// emissivity of sphere
ts = 300+273;// surface temperature of sphere, [K]
sigma = 5.67*10^-8;// [W/m^2/K^4]

//  Solution
Af = 6*l^2;// internal surface area of furnace, [m^2]
As =4 *%pi*r^2;// surface area of sphere, [m^2]

//  considering internal furnace to be black
Qf = sigma*Af*ti^4*10^-3;// [kW]

//  radiation emitted by sphere is
Qs = epsilon*sigma*As*ts^4*10^-3; // [kW]

//  Hence transfer of energy is
Q = Qf-Qs;// [kW]

mprintf('\n The transfer of energy will be from furnace to sphere and transfer rate is  =  %f kW\n',Q);

//   There is some calculation mistake in the book so answer is not matching

//  End

