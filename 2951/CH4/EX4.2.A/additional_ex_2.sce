clc;
clear;
Wc=8*10^(8);// Angular Frequency of Carrier Signal
fc=Wc/(2*%pi);

Wm=1300;//Angular Frequency of Message Signal
fm=Wm/(2*%pi);

B=3;//Modulation Index
R=12;
Vc_rms=15/sqrt(2);

Max_dev=B*fm; 
Power=Vc_rms^(2)/R;

disp(Power,"Power Dissipated (in W) is");
