clc;
clear all;
disp("Critical radius of insulation")
k=0.155;// W/(m*C)
t1=65;//degree C
tair=20;//degree C
r1=10/2;//mm
ho=8.5;// W/(m^2*K)
rc=1000*k/ho;//mm
t=rc-r1;
disp("mm",rc,"critical radius of insulation =") 
disp("mm",t,"thickness upto which rubber insulation is effective in heat dissipation t =") 
Rthcd=(log(rc/r1))/k
Rthcv=1000/(ho*rc)
Ql=2*3.1416*(t1-tair)/(Rthcd+Rthcv);
disp("W/m",Ql,"with insulation Ql=")
