//Caption:Determine the powers in the remaining ports
//Exa:6.5
clc;
clear;
close;
b_1=20;
b_2=20;
p_1=abs((60-50)/(60+50));
p_2=abs((75-50)/(75+50));
P_1=b_1*(1-p_1^2)/2;
P_2=b_2*(1-p_2^2)/2;
disp(P_1,'Power in port1 (in mW) =');
disp(P_2,'Power in port2 (in mW) =');
