//Exa 1.5
clc;
clear;
close;
format('v',7);

//Given Data :
VGR=57;//KN/m^2
Patm=765;//mm of Hg
//101.325KN/m^2=760 mm of Hg
VGR=VGR*760/101.325;//mm og Hg
Pabs=Patm-VGR;//mm of Hg
disp(Pabs,"Absolute pressure in mm of Hg : ");
