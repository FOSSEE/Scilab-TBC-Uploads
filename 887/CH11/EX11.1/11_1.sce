clc
//ex11.1
V_s=1*10^-3;
R_s=1*10^6;
A_voc=10^4;      //open-circuit voltage gain
R_i=2*10^6;      //input resistance
R_o=2;      //output resistance
R_L=8;      //load resistance
V_i=V_s*(R_i/(R_i+R_s));      //input voltage(voltage-divider principle)
V_vcs=A_voc*V_i;      //voltage controlled source voltage
V_o=V_vcs*(R_L/(R_L+R_o));      //output voltage(voltage-divider principle)
A_v=V_o/V_i;
A_vs=V_o/V_s;
A_i=A_v*R_i/R_L;      //current gain
G=A_v*A_i;      //power gain
printf(" All the values in the textbook are approximated, hence the values in this code differ from those of Textbook")
disp(A_v,'Voltage gain Av')
disp(A_vs,'Voltage gain Avs')
disp(A_i,'Current gain')
disp(G,'Power gain')
