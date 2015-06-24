//Exa 8.13
clc;
clear;
close;
//Given data :
C=6;//in pF
C=C*10^-12;//in F
FH=8;//in MHz
FH=FH*10^6;//in Hz
//Formula : FH=1/(2*%pi*R*C)
R=1/(2*%pi*FH*C);//in Ohm
disp(R*10^-3,"Maximum load resistance in Kohm");