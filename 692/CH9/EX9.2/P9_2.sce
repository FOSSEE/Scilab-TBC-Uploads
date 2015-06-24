//EXAMPLE 9.2
//analog passband & stopband frequencies(in KHz) :
clc;
clear;
ap=7;
as=3;
//Sampling frequency (in KHz):
FT=25;
//digital frequencies:
wp=2*%pi*ap/FT;
disp(wp,'wp = ');
ws=2*%pi*as/FT;
disp(ws,'ws = ');