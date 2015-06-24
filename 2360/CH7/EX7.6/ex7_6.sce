// Exa 7.6
format('v',7);clc;clear;close;
// Given data
verticaltangencies = 2;// vertical tangencies
horizontaltangencies = 5;// horizontal tangencies
f_H = 1;// frequency in kHz
// f_V/f_H = horizontaltangencies/verticaltangencies;
f_V = (horizontaltangencies/verticaltangencies)*f_H;//unknown frequency of vertical signal  in kHz
disp(f_V,"The unknown frequency of vertical signal in kHz is");
