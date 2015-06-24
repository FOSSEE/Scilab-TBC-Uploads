clc;
clear;
vis=0.38;//Ns/m^2
sg=0.91;//specific gravity of Newtonian fluid
dia=25;//mm
vel=2.6;//m/s

//calculating in SI units
//fluid density d=sg*(density of water @ 277K)
d=sg*1000;//kg/m^3
//Reynolds number Re=d*vel*dia/vis
Re=(d*vel*dia)/(vis*1000);//(kgm/sec^2)/N
disp(156,"Re in SI units=")
//calculating in BG units
d1=d*1.94/1000//slugs/ft^3
vel1=vel*3.281//ft/s
dia1=(dia/1000)*3.281//ft
vis1=vis*(2.089/100)//lb*s/ft^2
Re1=(d1*vel1*dia1)/vis1;//(slugs.ft/sec^2)/lb
disp(Re1,"Re in Bg units=")
