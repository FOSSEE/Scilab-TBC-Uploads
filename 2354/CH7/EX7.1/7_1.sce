//example 7.1
clc; funcprot(0);
// Initialization of Variable
P=1.014;
vg=1.673;
vf=1.0435/1000;
T=373.15;//temperature
sg=7.3549;
sf=1.3069;
k=P*(vg-vf)*10^5/1000;
disp(k,"W/m in kJ/kg");
k1=T*(sg-sf);
disp(k1,"Q/m in kJ/kg");
clear()
