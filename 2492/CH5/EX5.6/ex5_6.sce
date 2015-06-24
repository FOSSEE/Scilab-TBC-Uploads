// Exa 5.6
format('v',5)
clc;
clear;
close;
// Given data
// Vo = -R_L*Io = ( (-R_L*Rc)/(Rc+R_L+(1/SC)) )*h_fe*Ib;
R_C = 4;// in k ohm
R_L = 2;// in k ohm
R = R_C+R_L;// in k ohm
R= R*10^3;// in ohm
C_L = 10;// in µF
C_L = C_L * 10^-6;// in F
// Vo/Ib =Aos/(S+(1/R*C_L));
f_L = 1/(2*%pi*R*C_L);// in Hz
disp(f_L,"The lower  3-dB frequency in Hz is");
