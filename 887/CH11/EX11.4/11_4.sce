clc
//ex11.4
V_AA=15;
V_BB=15;
V_i=1*10^-3;
I_A=1;
I_B=0.5;
R_L=8;
R_o=2;
R_i=100*10^3;
A_voc=10^4;
P_i=V_i^2/R_i;
V_o=A_voc*V_i*(R_L/(R_L+R_o));
P_o=V_o^2/R_L;
P_s=V_AA*I_A+V_BB*I_B;
P_d=P_s+P_i-P_o;
n=P_o*100/P_s;
printf(" All the values in the textbook are approximated, hence the values in this code differ from those of Textbook")
disp(P_i*10^12,'Input power in picowatts')
disp(P_o,'Output power in watts')
disp(P_s,'Supply power in watts')
disp(P_d,'Dissipated power in watts')
disp(n,'Efficiency of the amplifier')
