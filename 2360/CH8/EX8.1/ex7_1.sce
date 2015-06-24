// Exa 7.1
format('v',7);clc;clear;close;
// Given data
BW = 25;//bandwidth in MHz
Trd = 20;//rise time in ns
Trd = Trd * 10^-9;// in s
// BW = 0.35/Tro;
Tro = 0.35/(BW*10^6);// in s
// Trd = sqrt( (Trs^2) + (Tro^2) );
Trs = sqrt( (Trd^2)-(Tro^2) );// rise time of signal in sec
Trs = Trs * 10^9;// in ns
disp(Trs,"The rise time of signal in ns is");
