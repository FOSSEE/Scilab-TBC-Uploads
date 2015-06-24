clc
//ex11.6
R_i=1*10^3;
R_o=100;
A_voc=100;
//i_osc=A_voc*V_i/R_o and G_msc=i_osc/V_i gives G_msc=A_voc/R_o
G_msc=A_voc/R_o;
disp('The resulting transconductance model is with an:')

disp(R_i,'input resitance in ohms')
disp(R_o,'output resistance in ohms')
disp(G_msc,'and transconductance in siemens')
