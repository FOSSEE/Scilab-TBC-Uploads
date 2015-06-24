clc;
// page no 679
// prob no 18_3
//A transmitter and receiver at 6GHz seperated by 40km with o/p power 2 W 
f=6*10^9;d=40;Pt=2;// power in watt
//transmitting antenna gain Gt=20dBi,receiving antenna Gr=25dBi
Gt=20;Gr=25;
f_mhz=6000;//f=6000 MHz
Pr_Pt_dB=(Gt+Gr)-(32.44+(20*log10(d))+(20*log10(f_mhz)));
Pt_dBm=10*log10(Pt/10^-3);
Pr_dBm=Pt_dBm + Pr_Pt_dB;
disp('dBm',Pr_dBm,'The power delivered to the Rx is');