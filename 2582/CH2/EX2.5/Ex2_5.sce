//Ex 2.5
clc;clear;close;
VCC=5;//V
VEE=-5;//V
VBE=0.6;//V
VCE23=0.6;//V
VCE_sat=0.2;//V
Vo_max=VCC-VCE_sat-VBE;//V
Vo_min=VEE+VCE_sat+VBE+VCE23;//V
disp(Vo_max,"Maximum output voltage(V)");
disp(Vo_min,"Minimum output voltage(V)");
