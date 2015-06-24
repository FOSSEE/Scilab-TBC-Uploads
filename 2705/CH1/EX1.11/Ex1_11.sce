clear;
clc;
disp('Example 1.11');


//  Given values
v = 50; //  speed, [km/h]
F = 900; //  Resistance to the motion of a car

//  solution
v = v*10^3/3600; //  [m/s]
 Power = F*v; //  Power formula, [W]

mprintf('\n The power output of the engine is  =  %f  kW\n',Power*10^-3);
 
 //  End
 
