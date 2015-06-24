//Example 2.3(b)

clear;

clc;

vI=5;//Input Voltage

R=10*10^3;

Vsat=13;//Saturation Voltage

iO=vI/R;//iO for Circuit shown in Fig.2.4(a) (from right to left)

//For Circuit shown in Fig.2.4(a) VoL1<vL1<VoH1

VoL1=-Vsat-vI;

VoH1=Vsat-vI;

printf("For Circuit shown in Fig.2.4(a) %.1f V< vL <",VoL1);

printf("%.1f V",VoH1);

//For Circuit shown in Fig.2.4(b) VoL2<vL2<VoH2

VoL2=-Vsat;

VoH2=Vsat;

printf("\nFor Circuit shown in Fig.2.4(b) %.1f V< vL <",VoL2);

printf("%.1f V",VoH2);