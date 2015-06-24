//Exa 2.9
clc;
clear;
close;
format('v',7);

//Given Data
deltaU=-4000;//KJ
W=-1.2;//KWh
W=W*3600;//KJ
Q=W+deltaU;//KJ/hr
disp(Q,"Net heat transfer in KJ/hr : ");
