//Caption:Find the line current,line voltage and power 
//Exa:4.14
clc;
clear;
close;
I_L=4*80/5;
disp(I_L,'Line current (in Amperes)=');
V_L=110*100/1;
disp(V_L,'Line voltage (in Volts)=');
P=(100/1)*(80/5)*352;
disp(P,'Power on the transmission line (in Watts)=');