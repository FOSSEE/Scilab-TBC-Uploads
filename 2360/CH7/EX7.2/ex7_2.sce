// Exa 7.2
format('v',7);clc;clear;close;
// Given data
Trs = 17;//rise time in µs
Trs = Trs * 10^-6;// in s
Trd = 21;// in µs
Trd = Trd * 10^-6;// in s
// Trd = sqrt( (Trs^2) + (Tro^2) );
Tro = sqrt( (Trd^2)- (Trs^2) );// in sec
BW = 0.35/Tro;//band width  in Hz
BW = BW * 10^-3;// in kHz
disp(BW,"The band width in kHz is");
