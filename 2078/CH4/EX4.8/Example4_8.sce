//Exa 4.8
clc;
clear;
close;
//Given data :
r=(20/2)/10;//cm
d1=4*100;//cm
d2=5*100;//cm
d3=6*100;//cm
rdash=0.7788*r;//cm
L=0.2*log((d1*d2*d3)^(1/3)/rdash);//mH
disp(L,"Inductance per phase(mH)");
