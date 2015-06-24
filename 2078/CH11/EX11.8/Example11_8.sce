//Exa 11.8
clc;
clear;
close;
//Given data :
r=0.5;//cm
R=3.5;//cm
r1=1;//cm
g1max=34;//kV/cm(peak)
epsilon_r=5;//relative permitivity
g2max=g1max*r/r1/epsilon_r;//kV/cm(peak)
Vpeak=r*g1max*log(r1/r)+r1*g2max*log(R/r1);//kV
Vrms=Vpeak/sqrt(2);//kV
disp(Vrms,"RMS value of max safe working voltage(kV)");
