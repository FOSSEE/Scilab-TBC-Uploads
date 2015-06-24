// Exa 5.4
clc;
clear;
close;
format('v',6)
// Given data
R1 = 6;// in ohm
R2 = 4;// in ohm
R3 = 4;// in ohm
h11 = R1+( (R2*R3)/(R2+R3) );// in ohm
disp(h11,"The value of h11 in ohm is");
// i2 = -i*1/2 and h21 = i2/i1 = (-i1/2)/2, So
h21 = -1/2;
disp(h21,"The value of h21 is");
// V1 = V2/2 and h12 = V1/V2 = (V2/2)/2, SO
h12 = 1/2;
disp(h12,"The value of h12 is");
Zo = R2+R3;// output resistance  in ohm
h22 = 1/Zo;// in mho
disp(h22,"The value of h22 in mho is");
