// Exa 17.8
// To calculate minimum signal power required and maximum allowable path loss.

clc;
clear all;

N0=-174;//Noise density in dBm/Hz
Bc=1.25;//Channel bandwidth in mHz
Rc=1.2288;//Chip rate in Mcps
Nf=6;  //Receiver Noise figure in dB
Pt=27;  //Effective radiated power from mobile in dBm
Lct=0.5;  //Transmitter cable and connector loss in dBm
Lbody=1.5;//Body loss in dB
Lcr=2;  //Receiver cable and connector loss in dB
Mint=0;  //Interference margin in dB
Mfading=2;//fast fadinf margin in dB
Lpent=8;//Penetration loss in dB
Gm=0;//Transmitter antennna gain in dBi
Gb=12;//Receiver antenna gain in dBi
Fm=8;//Fade margin in dB
Eb_Nt=7;// in dB

//solution
Nth=N0+Nf;
S_Nt=Eb_Nt+10*log10((Rc*10^6)/(Bc*10^6));
Smin=S_Nt+10*log10(Rc*10^6)+Nth;
Lpmax=(Pt-Smin)+(Gb+Gm)-(Lbody+Lct+Lcr+Fm+Lpent)-Mint-Mfading;
printf('Minimum signal power required is %.2f dBm \n ',Smin);
printf('Maximum allowable path loss is %.2f dB \n ',Lpmax);
