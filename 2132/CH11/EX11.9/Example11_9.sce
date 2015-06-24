//Example 11.9
clc;
clear;
close;
format('v',7);
//Given data :
H=0.40;//meter
L=5;//meter
disp("(i) End contractions are Suppressed : ");
Q=1.84*L*H^(3/2);//m^3/s
disp(Q,"Discharge in m^3/sec : ");
disp(Q*1000,"Discharge in litres/sec : ");
disp("(ii) End contractions are Considered : ");
n=2;
Q=1.84*(L-0.1*n*H)*H^(3/2);//m^3/s
disp(Q,"Discharge in m^3/sec : ");
disp(Q*1000,"Discharge in litres/sec : ");
