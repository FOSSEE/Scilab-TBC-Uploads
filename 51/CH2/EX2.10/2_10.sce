clc;
clear;
dia=1.5;//m
wt=8.5;//kN
//tension in cable T=bouyant force(Fb)-wt
//fluid is water
sw=10.1;//kN/m^3
vol=%pi*dia^3/6;//m^3
Fb=sw*vol;//kN
T=Fb-wt;//kN
disp("kN",T,"The tension in the cable =")