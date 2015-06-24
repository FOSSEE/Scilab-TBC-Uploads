//Exa 3.4
clc;
clear;
close;
format('v',6);

//Given Data :
Q2dot=12000;//KJ/hr
Wdot=0.75;//KW
Wdot=Wdot*3600;//KJ/hr
COP=Q2dot/Wdot;
disp(COP,"Coefficient of Performance  is : ");
Q1dot=Q2dot+Wdot;//KJ/hr
disp(Q1dot,"Heat transfer rate in condenser in KJ/hr : ");
