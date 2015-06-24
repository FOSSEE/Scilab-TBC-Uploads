//Ex 4.3
clc;clear;close;
VDD=3;//V(Supply Voltage)
VOH=VDD;//V
VOL=0;//V
Vth=VDD/2;//V
VIL=VDD/2;//V
VIH=VDD/2;//V
NMH=VOH-VIH;//V
NML=VIL-VOL;//V
disp(Vth,"Vth(V)");
disp(VIL,"VIL(V)");
disp(VIH,"VIH(V)");
disp(VOL,"VOL(V)");
disp(VOH,"VOH(V)");
disp(NML,"NML(V)");
disp(NMH,"NMH(V)");
//Gain=(VOH-VOL)/(VIH-VIL)=infinity as VIH=VIL;//Gain in the transition region
Gain=%inf;//
disp(Gain,"Gain in the transition region");
//Answer in the book is wrong for the gain.
