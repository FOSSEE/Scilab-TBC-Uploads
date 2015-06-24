clear;
clc;
disp('Example 7.3');

//  aim : To determine
//  the specific entropy of steam

//  Given values
P = 1.5;//pressure,[MN/m^2]
T = 273+300;//temperature,[K]

//  solution

//  (a)
//  from steam table
cpl = 4.187;//  [kJ/kg K]
Tf = 471.3;//  [K]
hfg = 1946;//  [kJ/kg]
cpv = 2.093;//  [kJ/kg K]

//  usung equation [2]
s = cpl*log(Tf/273.15)+hfg/Tf+cpv*log(T/Tf);//  [kJ/kg K]
mprintf('\n (a) The specific entropy of steam is  =  %f kJ/kg K\n',s);

//  (b)
//  from steam tables
s = 6.919;//  [kJ/kg K]
mprintf('\n (b) The accurate value of specific entropy from steam table is  =  %f kJ/kg K\n',s);

//  End
