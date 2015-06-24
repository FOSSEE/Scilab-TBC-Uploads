// Exa 3.19
format('v',5);clc;clear;close;
// Given data
V1 = 100;// in V
V2 = 0;// in V
e1= 0;// in V
e2= 100;// in V
T=2;// in sec
T1 = 0;// in sec
T2 = 2;// in sec
// Slope of ramp
A= (e2-e1)/(T2-T1);// in V/sec
e= 'A*t';// in sec
Erms= sqrt(1/T*integrate('(A*t)^2','t',0,T));// in V
Eav= 1/T*integrate('(A*t)','t',0,T);// in V
Kf= Erms/Eav;// form factor
Kf_sine= 1.11;// form factor of sine wave
True_reading= 1;// true reading
Meas_reading= Kf_sine/Kf;// measured reading
PerError= (True_reading-Meas_reading)/True_reading*100;//percentage error in the reading in %
disp(PerError,"The percentage error in the reading in % is : ")
