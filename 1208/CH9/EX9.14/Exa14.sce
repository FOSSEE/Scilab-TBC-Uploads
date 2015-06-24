//Exa 14
clc;
clear;
close;
// given data :
ST=3200;//in hours
AT=3000;//in hours
SR=1.5;//in Rs/Hour
IT=100;//in Rs/Hour
AWP=6000;//in RS
AR=AWP/AT;//in Rs/Hour
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