//Exa 13
clc;
clear;
close;
// given data :
ST=4300;//in hours
AT=4000;//in hours
SR=3;//in Rs/Hour
GWP=16400;//in RS
AR=GWP/AT;//in Rs/Hour
//Labour Cost variance
LCV=(ST*SR)-(AT*AR)
//Labour Efficiency variance
LEV=SR*(ST-AT);// in Rs
//Labour Rate variance
LRV=AT*(SR-AR);// in Rs
disp(LCV,"Labour Cost variance : ")
disp(LRV,"Labour Rate variance : ")
disp(LEV,"Labour Efficiency variance : ")
disp("Negative variances indicate adverse value   ");
disp("Positive variances indicate favourable value   ");