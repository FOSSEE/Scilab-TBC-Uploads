// Exa 4.38
format('v',5)
clc;
clear;
close;
// Given data
h_fe = 110;
h_ie = 1.6;// in k ohm
h_ie = h_ie * 10^3;// in ohm
h_re = 2*10^-4;
h_oe = 20*10^-6;// in A/V
R_B = 470;// in k ohm
R_B = R_B * 10^3;// in ohm
R_C = 4.7;// in k ohm
Ri= 1.51*10^3;// in ohm
R_C =R_C * 10^3;// in ohm
Rin = h_ie - ( (h_fe*h_re*R_C)/(1+(h_oe*R_C)) );// in ohm
// The value of Zi,
Zi = (R_B*Ri)/(R_B+Ri);// in ohm
Zi= Zi*10^-3;// in k ohm
disp(Zi,"The value of Zi in k ohm");
Zi= Zi*10^3;// in ohm
R_L = R_C;// in ohm
// The voltag gain,
Av = -h_fe/( Zi*(h_oe+(1/R_L)) );
disp(Av,"The value of Av is");
Rs = 0;// in ohm
// The value of Zo 
Zo = 1/( h_oe-( (h_fe*h_re)/(Zi+Rs) ) );// in ohm
Zo= Zo*10^-3;// k ohm
disp(Zo,"The value of Zo in k ohm is");
