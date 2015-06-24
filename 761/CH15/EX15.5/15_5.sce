clc;
//page no 525
//prob no. 15.5
//A transmitter with power o/p=150W at fc=325MHz.antenna gain=12dBi receiver antenna gain=5dBi at 10km away
//considering no loss in the system
d=10;Gt_dBi=12;Gr_dBi=5;fc=325;Pt=150;
//Determination of power delivered
Lfs=32.44+(20*log10(d))+(20*log10(fc))-(Gt_dBi)-(Gr_dBi);
Pr=Pt/(10^(Lfs/10));
disp('nW',Pr*10^9,'The power delivered to receiver is'); 