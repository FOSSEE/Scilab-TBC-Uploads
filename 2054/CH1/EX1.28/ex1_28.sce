//Exa:1.28
clc;
clear;
close;
I_ab=800;//Armature current (in amperes)
N1=1000;//in rpm
N2=500;//in rpm
I=I_ab*N1/N2;
disp(I,' Armature Current at 1000 rpm (in amperes)=')