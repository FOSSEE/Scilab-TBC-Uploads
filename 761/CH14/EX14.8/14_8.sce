clc;
//page no 478
//prob no. 14.8
//A transmitter supplies 50W with SWR 2:1
Pi=50;SWR=2;
//Determination of power absorbed by load
Pl=(4*SWR*Pi)/(1+SWR)^2;
disp('W',Pl,'The power absorbed by load is');