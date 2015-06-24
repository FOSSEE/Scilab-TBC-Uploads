//Example No. 15.8.2
clc;
clear;
close;
format('v',6);
Nm_D=400;//electron/cm^3(Maximum electron density)
Nm_E=5*10^5;//electron/cm^3(Maximum electron density)
Nm_F=2*10^6;//electron/cm^3(Maximum electron density)
fc_D=9*sqrt(Nm_D);//kHz(critical frequency of D-layer)
disp(fc_D,"Critical frequency for D-layer in kHz : ");
fc_E=9*sqrt(Nm_E);//kHz(critical frequency of E-layer)
disp(fc_E/1000,"Critical frequency for E-layer in MHz : ");
fc_F=9*sqrt(Nm_F);//kHz(critical frequency of F-layer)
disp(fc_F/1000,"Critical frequency for F-layer in MHz : ");
