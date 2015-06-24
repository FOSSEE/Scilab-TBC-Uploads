//Exa 4.2
clc;
clear;
close;
//Given Data :
format('v',7);
d=2.8*100;//in cm(spacing)
r=0.5*1.5;//in cm
ds=0.77888*r;//in cm
L=0.2*log(d/ds);//in H/m/phase
disp(L*20,"Inductance per phase for a 20 km line (in mH) :");