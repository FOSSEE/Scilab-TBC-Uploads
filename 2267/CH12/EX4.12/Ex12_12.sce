//Part B Chapter 4 Example 12
clc;
clear;
close;
n=8;//no. of bolts
d=160;//mm
F=450;//kN
T=20;//kNm
tau_t=120;//N/mm^2(For tensile load)
tau_s=60;//N/mm^2(For shear load)
db1=sqrt(F*1000/n/(%pi/4)/tau_t);//mm
db2=sqrt(T*10^6/(n*tau_s*%pi/4*(d/2)));//mm
db=max(db1,db2);//mm
disp("Suitable bolt diameter is "+string(db)+" mm");
                                                
