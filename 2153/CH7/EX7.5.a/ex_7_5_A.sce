// Example 7.5.a: yield point stress
clc;
clear;
close;
format('v',10)
yl=34;//yeild load in kN
ul=61;//ultimate load in kN
fl=78;//final length in mm
glf=60;//gauge length of fratture in mm
fd=7;//final diamtere in mm
d=12;//specimen diamtere in mm
sl=62.5;//specimen length in mm
A=(%pi*(d)^2)/4;// in meter square
ylp=((yl*10^3)/(A));//yeild point stress in N/mm^2
disp(floor(ylp),"yeild point stress in N/mm^2")
