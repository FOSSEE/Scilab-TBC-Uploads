clc;
//page 13
//ex-1.9

G1=5000;
L=2000;
G2=400;
Ps=0.1;  //in mW
P1=G1*Ps;  //in mW
disp('mW',P1,'(a)  Power level P1 is:');
P2=P1/L;  //in mW
disp('mW',P2,'Line output power P2:');
Po=G2*P2;  //in mW
disp('mW',Po,'System output power Po:');
PsdBm=10*log10(Ps/1);
G1dB=10*log10(G1);
LdB=10*log10(L);
G2dB=10*log10(G2);
disp('(b)  Output power power levels in dBm are');
P1dBm=PsdBm+G1dB;
disp('dBm',P1dBm,'P1(dBm)=');
P2dBm=P1dBm-LdB;
disp('dBm',P2dBm,'P2(dBm)=');
PodBm=P2dBm+G2dB;
disp('dBm',PodBm,'Po(dBm)=');

