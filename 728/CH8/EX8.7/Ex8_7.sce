//Caption:Calculate (i)-efficiency of reflex klystron ,(ii)-total output power in mW, (iii)-power delivered to load
//Exa:8.7
clc;
clear;
close;
P_dc_in=40;//in mW
ratio=0.278;//V_1/V_o;
n=1;
X=ratio*(2*n*%pi-%pi/2);
J=2.35;
eff=ratio*J*100;//in percentage
P_out= 8.91*P_dc_in/100;
P_load=3.564*80/100;
disp(eff,'Effeciency  (in percentage) =');
disp(P_out,'Total power output (in mW) =');
disp(P_load,'Power delivered to load (in mW) =');