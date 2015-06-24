//Caption:Calculate the scattering matrix.
//Exa:6.10
clc;
clear;
close;
In_loss=0.5;//insertion loss(in dB)
C=20;//in dB
D=35;//in dB
Pi_Pf=10^(C/10);
Pi=90;//in Watts
Pf=Pi/Pi_Pf;
Pf_Pb=10^(D/10);
Pb=Pf/Pf_Pb;
P_rec=(Pi-Pf-Pb);//Power received (in Watts)
P_rec_dB=10*log(Pi/P_rec)/log(10);
P_rec_eff=P_rec_dB-In_loss;//Effective power received (in dB)
disp(P_rec_eff,'Effective power received (in dB)=');