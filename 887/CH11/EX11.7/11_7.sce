clc
//ex11.7
R_i=1*10^3;
R_o=100;
A_voc=100;
//V_ooc=A_voc*V_i and I_i=V_i/R_i gives R_moc=V_ooc/I_i
R_moc=A_voc*R_i;
disp('The resulting transconductance model is with an:')

disp(R_i,'input resitance in ohms')
disp(R_o,'output resistance in ohms')
disp(R_moc,'and transresistance in ohms')

