clc
//calc of density of air at a certain height
p_atm=14.7;//psia
T=289;//K
//P2=P1*exp^(-(acc. due to gravity)*(mass of air)*(height)/(universal gas const.)/(temp.))
g=9.81;//m/s^2
R=8314;//N.m^2/Kmol/K
//for height of 1000 ft=304.8m
h=304.8;//m
p_1000=14.7*exp(-g*29*h/R/289);
disp("pressure at 1000ft is")
disp(p_1000)
disp("psia")
//for height of 10000 ft=3048m
h=3048;//m
p_10000=p_atm*exp(-g*29*h/R/289);
disp("pressure at 10000ft is")
disp(p_10000)
disp("psia")
//for height of 100000 ft=30480m
h=30480;//m
p_100000=14.7*exp(-g*29*h/R/289);
disp("pressure at 100000ft is")
disp(p_100000)
disp("psia")