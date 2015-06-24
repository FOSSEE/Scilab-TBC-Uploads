//Caption:Calculate (i)-drift time of carrier ,(ii)-operating frequency of diode 
//Exa:9.10
clc;
clear;
close;
L=2*10^-6;//drift length (in m)
v_d=10^5;//in cm/s
drift_time=L/v_d;
f=1/(2*drift_time);
disp(drift_time,'Drift time (in sec) =');
disp(f*10^-9,'Operating Frequency (in GHz)=');