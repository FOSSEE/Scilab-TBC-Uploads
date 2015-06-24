//Caption:Calculate (i)-Hull cut-off voltage ,(ii)-cut-off magnetic flux density if beam voltage V_o is 6000V, (iii)-cyclotron frequency in GHz
//Exa:8.8
clc;
clear;
close;
e_m_ratio=1.759*10^11;//(e/m)
R_a=0.15;//in m
R_o=0.45;//in m
B_o=1.2*10^-3;//in weber/m^2
V_o={(e_m_ratio)*B_o^2*R_o^2*[1-(R_a/R_o)^2]^2}/8;
//Given:
V=6000;//in volts
B_c=sqrt(8*V/e_m_ratio)/[[1-(R_a/R_o)^2]*(R_o)];//in weber/m^2
w_c=(e_m_ratio)*B_o;
f_c=w_c/(2*%pi);//in Hz
disp(V_o,'Cut-off voltage (in volts) =');
disp(B_c*10^5,'Cut-off magnetic flux density (in milli weber/sq. m) =');
disp(f_c*10^-9,'Cyclotron frequency (in GHz) =');

//Answer in book is wrongly given as: f_c=0.336Hz & V_o=50.666 kV