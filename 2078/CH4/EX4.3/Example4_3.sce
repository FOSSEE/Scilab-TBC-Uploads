//Exa 4.3
clc;
clear;
close;
//Given data :
r=1/2;//cm
d=1*100;//cm
mu=50;//relative permeability
r_dash=r*0.7788;//cm
L_cu=.1+0.4*log(d/r);//mH
disp(L_cu,"Loop inductance per km of copper conductor line(mH)");
L_steel=(mu+4*log(d/r))*10^-7*10^3;//mH
disp(L_steel*10^3,"Loop inductance per km of copper conductor line(mH)");
