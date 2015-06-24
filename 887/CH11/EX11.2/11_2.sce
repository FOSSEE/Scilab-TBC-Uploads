clc
//ex11.2
R_i_1=10^6;
R_o_1=500;
R_i_2=1500;
R_o_2=100;
R_L=100;
A_voc_1=200;
A_voc_2=100;
//voltage gain of the first stage...A_v_1=(V_o_1/V_i_1)=(V_i_2/V_i_2)=A_voc_1(R_i_2/(R_i_2+R_o_1))
A_v_1=A_voc_1*(R_i_2/(R_i_2+R_o_1));
A_v_2=A_voc_2*(R_L/(R_L+R_o_2));
A_i_1=A_v_1*R_i_1/R_i_2;
A_i_2=A_v_2*R_i_2/R_L;
A_i=A_i_1*A_i_2;
G_1=A_v_1*A_i_1;
G_2=A_v_2*A_i_2;
G=G_1*G_2;
disp(A_i_1,'Current gain of first stage')
disp(A_i_2,'Current gain of second stage')
disp(A_v_1,'Voltage gain of first stage')
disp(A_v_2,'Voltage gain of second stage')
disp(G_1,'Power gain of first stage')
disp(G_2,'Power gain of second stage')
disp(G,'Overall power gain')
