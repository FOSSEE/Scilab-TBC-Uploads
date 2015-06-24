clc
//ex11.5
R_i=1*10^3;
R_o=100;
A_voc=100;
//I_i=V_i/R_i, I_osc=A_voc*V_i/R_o    from these two we get A_isc=(i_osc/I_i)=(A_voc(R_i/R_o))
A_isc=A_voc*(R_i/R_o);
disp('The resulting current-amplifier is with an:')

disp(R_i,'input resitance in ohms')
disp(R_o,'output resistance in ohms')
disp(A_isc,'and a short-cut current gain of:')
