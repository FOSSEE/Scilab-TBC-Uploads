////Ex 4.13
clc;
clear;
close;
format('v',5);
Beta=0.04;//feedback factor
AOL=5000;//unitless(at dc)
Rio=40;//kohm
Ro=1;//kohm
SF=1+AOL*Beta;//sacrifice factor at dc
Rif=Rio/SF*1000;//ohm
disp(Rif,"Input impedence(ohm)");
Rof=Ro*1000/SF;//ohm
disp(Rof,"Output impedence(ohm)");
