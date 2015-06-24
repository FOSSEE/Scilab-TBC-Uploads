//Exa 12
clc;
clear;
close;
// given data :
ST=10;//in hours
AT=8;//in hours
SR=9;//in Rs/Hour
AR=10;//in Rs/Hour
//Labour Cost variance
LCV=(ST*SR)-(AT*AR)
//Labour Efficiency variance
LEV=SR*(ST-AT);// in Rs
//Labour Rate variance
LRV=AT*(SR-AR);// in Rs
disp(LCV,"Labour Cost variance : ")
disp(LEV,"Labour Efficiency variance : ")
disp(LRV,"Labour Rate variance : ")
disp("Negative variances indicate adverse value   ");
disp("Positive variances indicate favourable value   ");