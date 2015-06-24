//Exa 19
clc;
clear;
close;
// given data :
ST=60;//in hours
AT=40;//in hours
SR=120;//in Rs/Hour
AR=200;//in Rs/Hour
SCperunit=6;// in Rs
StdTime=50;//in hours
StdYield=1000;//in units
AY=1200;//in units
//Labour Cost variance
LCV=(ST*SR)-(AT*AR)
//Labour Efficiency variance
LEV=SR*(ST-AT);// in Rs
//Labour Rate variance
LRV=AT*(SR-AR);// in Rs
//Labour Yield variance
SY=(StdYield*AT)/StdTime;
LYV=SCperunit*(AY-SY);
disp(LCV,"Labour Cost variance : ")
disp(LEV,"Labour Efficiency variance : ")
disp(LRV,"Labour Rate variance : ")
disp(LYV,"Labour Yield variance : ")
disp("Negative variances indicate adverse value   ");
disp("Positive variances indicate favourable value   ");