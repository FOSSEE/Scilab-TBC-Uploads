//Exa22
clc;
clear;
close;
//given data :
SQ=58000//in sq.ft.
AQ=60000//in sq.ft.
SP=7//in rupees per sq.ft.
AP=6.75//in rupees per sq.ft.
ST=174000;//in hours
AT=185200;//in hours
SR=3.75;//in Rs/Hour
AR=3.5;//in Rs/Hour
//(i)  MCV
MCV=(SQ*SP)-(AQ*AP);//in rupees
//(ii) MPV
MRV=AQ*(SP-AP);//in rupees
//(iii) MUV
MUV=SP*(SQ-AQ);//in rupees
disp(MCV,"MCV=");
disp(MRV,"MRV=");
disp(MUV,"MUV=");
disp("Note :  ")
disp("Negative variances indicate adverse value   ");
disp("Positive variances indicate favourable value   ")
//Labour Cost variance
LCV=(ST*SR)-(AT*AR)
//Labour Efficiency variance
LEV=SR*(ST-AT);// in Rs
//Labour Rate variance
LRV=AT*(SR-AR);// in Rs
disp(LCV,"Labour Cost variance : ")
disp(LRV,"Labour Rate variance : ")
disp(LEV,"Labour Efficiency variance : ")


