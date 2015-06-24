
clear;
clc;
disp('Example 7.2');

//  aim : To determine
//  the specific entropy

//  Given values
P = 2;//  pressure,[MN/m^2]
x = .8;//  dryness fraction

//  solution
//  from steam table at given pressure
Tf = 485.4;//  [K]
cpl = 4.187;//  [kJ/kg K]
hfg = 1888.6;//  [kJ/kg]

//  (a) finding entropy by calculation
s = cpl*log(Tf/273.16)+x*hfg/Tf;//  formula for entropy calculation

mprintf('\n (a) The specific entropy of wet steam is  =  %f kJ/kg K\n',s);

//  (b) calculation of entropy using steam table
//  from steam table at given pressure
sf = 2.447;//  [kJ/kg K]
sfg = 3.89;//  [kJ/kg K]
//  hence
s = sf+x*sfg;//  [kJ/kg K]

mprintf('\n (b) The specific entropy using steam table is  =  %f kJ/kg K\n',s);

//  End
