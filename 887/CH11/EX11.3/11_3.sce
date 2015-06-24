clc
//ex11.3
R_i_1=10^6;
R_o_1=500;
R_i_2=1500;
R_o_2=100;
R_L=100;
A_voc_1=200;
A_voc_2=100;
A_v_1=A_voc_1*(R_i_2/(R_i_2+R_o_1));      //Voltage gain of first stage
A_v_2=A_voc_2;      //Voltage gain of second stage with open-circuit load
A_voc=A_v_1*A_v_2;      //overall open-circuit voltage gain
R_i=R_i_1;      //input resistance of cascading amplifier
R_o=R_o_2;      //output resistance
disp('Hence the simplified model for the cascade is with an:')
disp(R_i,'Input resistance in ohms')
disp(R_o,'Input resistance in ohms')
disp(A_voc,'Overall open-circuit voltage gain')
