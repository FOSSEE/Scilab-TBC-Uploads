//Exa 1.8
clc;
clear;
close;
format('v',7);

//Given Data :
Pmercury=10;//cm of Hg
Patm=76;//cm of Hg
Pwater=3.5/13.6;//cm of Hg
Pabs=Pmercury+Patm-Pwater;//cm of Hg
Pabs=Pabs/76*1.01325;//bar
disp(Pabs,"Absolute pressure of steam in bar : ");
