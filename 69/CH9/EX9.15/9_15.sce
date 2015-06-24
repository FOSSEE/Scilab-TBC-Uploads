clear; clc; close;

V = 50*10^(-3);
V_bar = 40*10^(-3);
fs = 5*10^(3);

vi = (4*10^(-3)/%pi)*(sin(2*%pi*5*10^(3)*%t)+(1/3)*sin(2*%pi*15*10^(3)*%t)+(1/5)*sin(2*%pi*25*10^(3)*%t)+(1/7)*sin(2*%pi*35*10^(3)*%t)+(1/9)*sin(2*%pi*45*10^(3)*%t));

tr = (18-2)*10^(-6);
BW = 0.35/tr;
P = (V-V_bar)/V;
flo = (P/%pi)*fs;

disp(BW,'Bandwidth  is ')
disp(flo,'Low cutoff frequency = ');