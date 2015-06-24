clc;
//page no 525
//prob no. 15.6
//A transmitter with o/p power=10W at fc=250MHz,connected to Tx 10m line with loss=3dB/100m t0 antenna with gain=6dBi.Rx antenna 20km away with gain=4dBi 
//Refer fig.15.6,assuming free space propagation
d=20;fc=250;Gt_dBi=6;Gr_dBi=4;loss=3/100;Zl=75;Zo=50;L=10;Pt=10;
Lfs=32.44+(20*log10(d))+(20*log10(fc))-Gt_dBi-Gr_dBi;//path loss
disp(Lfs);
L_tx=L*loss;//Determination of loss
ref_coe=(Zl-Zo)/(Zl+Zo);//Reflection coefficient
L_rx=1-(ref_coe^2);//Proportion of incident power that reaches load
L_rx_dB=-10*log10(L_rx);//Converting that proportion in dB
//Determination of total loss Lt
Lt=(Lfs)+(L_tx)+(L_rx_dB);
//Determination of power delivered to receiver
Pt_Pr=10^(Lt/10);//Power ratio
Pr=Pt/Pt_Pr;
disp('W',Pr,'The power delivered to receiver is');