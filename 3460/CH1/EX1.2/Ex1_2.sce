//Find input signal to noise ratio
clc;
clear all;
Vs_in=20*(1e-6); //input signal
Vn_in=8.95*(1e-6); //input noise 
Vs_out=6*(1e-3); //output signal
Vn_out=2.69*(1e-3); //output noise
SN_in=(Vs_in/Vn_in)*(Vs_in/Vn_in);
disp(SN_in,'input signal to noisse ratio Sin/Nin :')
SN_out=(Vs_out/Vn_out)*(Vs_out/Vn_out);
disp(SN_out,'output signal to noise ratio')
NF=SN_in/SN_out;
disp(NF,'Noise figure of amplifier : ')
