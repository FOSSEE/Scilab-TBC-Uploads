clc;
// page no 759
// prob no 20.4
//A satellite transmitter operates at 4GHz with 7W & antenna gain 40dBi
//Receiver antenna gain 30dBi & path length is 4*10^7
Gt_dBi=40;Gr_dBi=30;Pt=7;d=40000;//in km
f=4000;//in MHz
Pr_Pt_dB=Gt_dBi+Gr_dBi-(32.44+(20*log10(d))+(20*log10(f)));
//Signal strength at transmitter 
Pt_dBm=10*log10(Pt/10^-3);
Pr_dBm=(Pt_dBm)+(Pr_Pt_dB);
disp('dBm',Pr_dBm,'The value of signal strength at receiver');