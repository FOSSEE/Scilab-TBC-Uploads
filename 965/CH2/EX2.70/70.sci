clc;
clear all;
disp("Radius of insulation")
k=0.172;// W/(m*C)
t1=475;//degree C
t2=300;//degree C
r1=60/2;//mm
ho=2.8;// W/(m^2*K)
rc=1000*k/ho;//mm
Rthcd=(log(rc/r1))/k;
Rthcv=1000/(ho*rc);
disp("mm",rc,"critical radius of insulation =") 
Qwi=2*3.1416*(t1-t2)/(Rthcd+Rthcv);
disp("W/m",Qwi,"with insulation Qwi =")

Qwoi=2*3.1416*r1*ho*(t1-t2)/1000;
disp("W/m",Qwoi,"with insulation Qwoi =")

