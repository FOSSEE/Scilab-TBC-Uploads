//Exa 15
clc;
clear;
close;
// given data :
P=1000;//in units
T=10;//hours/unit
ST=P*T;//in hours
AT=10800;//in hours
SR=5;//in Rs/Hour
AR=5.20;//in Rs/Hour
IT=400;//in Rs/Hour
//Labour Cost variance
LCV=(ST*SR)-(AT*AR)
//Labour Efficiency variance
AT1=AT-IT;//idle time is deducted to calculate real efficiency
LEV=SR*(ST-AT1);// in Rs
//Labour Rate variance
LRV=AT*(SR-AR);// in Rs
//Labour Idle Time variance
ITV=IT*SR;// in Rs
disp(LCV,"Labour Cost variance : ")
disp(LEV,"Labour Efficiency variance : ")
disp(LRV,"Labour Rate variance : ")
disp(ITV,"Labour Idle Time variance : ")
disp("Negative variances indicate adverse value   ");
disp("Positive variances indicate favourable value   ");