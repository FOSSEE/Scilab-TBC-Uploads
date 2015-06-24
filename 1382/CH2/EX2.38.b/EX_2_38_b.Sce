// Example 2.38.b:S
clc;
clear;
close;
Beta=180;//Common emitter D.C. Current gain
Re=0.199;// Collector resistance in killo ohms
R1=5.76;// resistance in killo ohms
R2=34.67;// resistance in killo ohms
Rb=(R1*R2)/(R1+R2);
S=(1+Beta)/(1+Beta*(Re/(Re+Rb)));
disp(S,"Stability factor in self bias case is")
