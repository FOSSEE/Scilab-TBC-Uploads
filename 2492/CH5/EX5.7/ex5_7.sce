// Exa 5.7
format('v',5)
clc;
clear;
close;
// GIven data
R_L= 10*10^3;// in ohm
h_ie = 1.1;// in k ohm
h_ie = h_ie * 10^3;// in ohm
h_re = 2.5*10^-4;
h_fe = 50;
h_oe = 24;// in µA/V
h_oe = h_oe * 10^-6;// in A/V
R_S = 1;// in k ohm
R_S = R_S * 10^3;// in  ohm
Rc = 10;// in k ohm
Rc = Rc * 10^3;// in ohm
Ai = round(-h_fe/(1+(h_oe*R_L)));
disp(Ai,"The value of Ai is");
Ri = h_ie+(h_re*Ai*R_L);// in ohm
Ri= Ri*10^-3;// k ohm
disp(Ri,"The value of Ri in k ohm is");
Ri= Ri*10^3;// ohm
Av = (Ai*R_L)/Ri;
disp(Av,"The value of Av is");
Avs = (Av*Ri)/(Ri+R_S);
disp(Avs,"The value of Avs is");
Ais = (Ai*R_S)/(Ri+R_S);
disp(Ais,"The value of Ais is");
