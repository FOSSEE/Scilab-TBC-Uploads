clc
//calc pressuer at different heights considering on density change in air
p_atm=14.7;//psia
g=9.81;//m/s^2
//P2=P1*[1-(acc. due to gravity)*(mass of air)*(height)/(univ. gas const.)/(temp.)]
T=289;//K
R=8314//N.m^2/Kmol/K
//for height of 1000ft=304.8m
h=304.8//m
p_1000=p_atm*[1-g*29*h/R/T];
disp("pressure at 1000ft is")
disp(p_1000)
disp("psia")
//for height of 10000ft=3048m
h=3048//m
p_10000=p_atm*[1-g*29*h/R/T];
disp("pressure at 10000ft is")
disp(p_10000)
disp("psia")
//for height of 100000ft=30480m
h=30480//m
p_100000=p_atm*[1-g*29*h/R/T];
disp("pressure at 100000ft is")
disp(p_100000)
disp("psia")
//NOTE that the pressure comes out to be negative at 100000ft justifying that density of air changes with altitude