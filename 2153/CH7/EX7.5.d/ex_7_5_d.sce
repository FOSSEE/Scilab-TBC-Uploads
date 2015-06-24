// Example 7.5.d: percentage elonagtion
clc;
clear;
close;
format('v',4)
yl=34;//yeild load in kN
ul=61;//ultimate load in kN
fl=78;//final length in mm
glf=60;//gauge length of fratture in mm
fd=7;//final diamtere in mm
d=12;//specimen diamtere in mm
sl=62.5;//specimen length in mm
A=(%pi*(d)^2)/4;// in mm square
A1=(%pi*(fd)^2)/4;// in mm square
pr=(fl-glf)/glf;//
disp(pr*100,"percentage elonagtion is")

