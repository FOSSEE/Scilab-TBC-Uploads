// Caption: Finding power factor,core loss current
clear;
close;
clc;
alpha=acos(16/20);
pf=cos(alpha);//power factor
disp(pf,'power factor=');

I_e=20/194;//exciting current
I_c=16/194;//core loss component
I_m=I_e*0.6;//magnetizing componentminimum magnet volume
