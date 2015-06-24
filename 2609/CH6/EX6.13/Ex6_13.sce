//Ex 6.13
clc;
clear;
close;
format('v',6);
f0=1.5;//kHz
Vout=6;//V////peak to peak
Vsat=13.5;//V
disp("Various design parameters are : ");
R2=10;//kohm///choosen for the design
R1=R2*2*Vsat/Vout;//kohm
disp(R1,"R1(kohm)");
disp(R2,"R2(kohm)");
disp("Use R1=50 kohm for the design");
//Let Cf=0.05 micro F for the design
Cf=0.05;//micro F
disp(Cf,"Cf(micro F)");
Ri=R1*1000/(f0*1000)/4/(Cf*10^-6*R2*1000)/1000;//kohm
disp(Ri,"Ri(kohm)");
