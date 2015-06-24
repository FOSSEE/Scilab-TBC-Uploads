//Example 2.3(c)

clear;

clc;

vI=5;//Input Voltage

R=10*10^3;

Vsat=13;//Saturation Voltage

iO=vI/R;//iO for Circuit shown in Fig.2.4(a) (from right to left)

//For Circuit shown in Fig.2.4(a)

VoL1=-Vsat-vI;

VoH1=Vsat-vI;

//For Circuit shown in Fig.2.4(b) VoL2<vL2<VoH2

VoL2=-Vsat;

VoH2=Vsat;

RLmax1=VoH1/iO;//Maximum Possible value of RL

//For Circuit shown in Fig.2.4(b)

RLmax2=VoH2/iO;//Maximum Possible Value of Rl

printf("Max Value of RL for Circuit shown in Fig.2.4(a)= %.f kohms",RLmax1*10^(-3));

printf("\nMax Value of RL for Circuit shown in Fig.2.4(b)= %.f kohms",RLmax2*10^(-3));