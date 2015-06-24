clc;
// page no 899
// prob no 24.7
// refer table from the problem page no 899
P_coupling1 =-3; P_coupling2 = -6; P_coupling3 =-40;// in dB
//Part a) The proportion of input power emerging at port 2
P2_Pin=10^(P_coupling1/10);
disp('%',P2_Pin*100,'a) The proportion of input power emerging at port 2');
P3_Pin=10^(P_coupling2/10);
disp('%',P3_Pin*100,' The proportion of input power emerging at port 3');
// Part b) In the reverse direction,the signal is 40dB down for all combinations, so
directivity = 40;
disp('dB',directivity,'Directivity is');
Pin_total = P2_Pin + P3_Pin;
// excess loss in dB
loss=-10*log10(Pin_total);
disp('dB',loss,'the excess loss is');