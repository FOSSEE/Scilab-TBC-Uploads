 //Caption:Calculate (i)-maximum power gain in dBs ,(ii)-noise figure F in dBs, (iii)-bandwidth for r=0.2
//Exa:9.12
clc;
clear;
close;
ratio=8;
r=0.2;
r_Q=8;
T_d=300;//in Kelvin
T_o=300;//in Kelvin
X=8;
G=(ratio)*X/(1+sqrt(1+X))^2;
G_in_dB=(10*log(G))/log(10);//gain
disp(G_in_dB,'Maximum Gain (in dB)=');
F=[10*log(1+(2*T_d/T_o)*[(1/(r_Q))+(1/(r_Q)^2)])]/log(10);//noise figure
disp(F,'Noise figure (in dB) =');
B_W=2*r*sqrt(ratio);//bandwidth
disp(B_W,'bandwidth =');