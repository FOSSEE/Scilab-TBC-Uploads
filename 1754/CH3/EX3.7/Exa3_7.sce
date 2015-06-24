//Exa 3.7
clc;
clear;
close;
//Given data : 
RC=5.5;//in kohm
hfe=330;//unitless
hie=4.5;//in kohm
f1=30;//in Hz
//Formula : f1=1/(2*%pi*C*(hie+RC))
C=1/(2*%pi*f1*(hie*10^3+RC*10^3));//in F
disp(C*10^6,"Value of coupling capacitor in micro farad : ");
