//Exa:1.27
clc;
clear;
close;
N_ratio=1.2;//Speed Ratio
//From Saturation Curve
I_ratio=0.65;//feild current ratio corresponding to 83.3% of full load value of flux to 65% of full load value of flux
I_a_ratio=N_ratio;//Armature current ratio corresponding to 83.3% of full load value of flux to 65% of full load value of flux
R_ratio=I_ratio/(I_a_ratio-I_ratio);
disp(R_ratio,'Value of Diverter resistance (in ohms)=');
disp('   times the Series Feild Resistance (R_se)')