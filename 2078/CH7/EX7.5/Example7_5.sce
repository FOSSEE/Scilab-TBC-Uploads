//Exa 7.5
clc;
clear;
close;
format('v',7);
//Given data :
r=2.5/2;//cm
epsilon_r=4;//constant
r1=3/2;//cm
r2=9/2;//cm
V=20;//kV(rms)
//Formula : gmax=q/(2*epsilon*r)
g2maxBYg1max=r/epsilon_r/r1;//unitless
//Formula : V=g1max*r*log(r1/r)+g2max*r1*log(r2/r1)
g1max=V/(r*log(r1/r)+g2maxBYg1max*r1*log(r2/r1));//in kV/cm
disp(g1max,"g1max(kV/cm) = ");
disp("g1max > go, Corona will be present.");
