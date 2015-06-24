//Determine PBR ratio
//Ex:20.4
clc;
clear;
close;
p_mg=1.74;//density of magnesium in gm/cm^3
p_mgo=3.65;//density of magnesium oxide in gm/cm^3
m_mg=24;//mol wt ogf mg
m_mgo=40.3;//mol wt of mgo
PBR=(m_mgo/p_mgo)/(m_mg/p_mg);
disp(PBR,"PBR = ");
printf("Since PBR < 1. So porous film will form which will be non protective");