//Page Number: 8.18
//Example 8.18
clc;
//Given, 

Fa=5; //dB
d=200; //Km
a=2; //dB/Km
No=4D-21; //W/Hz
BW=4000;
Osnr=30; //dB
//(a) No repeaters used
L=d*a; //dB
disp('dB',L,'Noise figure:');

//As Output SNR=InputSNR/F where F=L*Fa
//And Input SNR=(Pt/(No*B))
//Therefore,PT=Output SNR+L+Fa+(No*B)

NoB=10*log10(No*BW);

//Power Transmitted
Pt=Osnr+L+Fa+(NoB);

PtdB=10^(Pt/10);
disp('W',PtdB,'Power transmitted with no repeaters');

//(b)20 repeaters are employed
n=20;
//F becomes 20F
//Output SNR=InputSNR/20*F where F=L*Fa
L1=L/n; //dB per segment

//Power Transmitted
Pt1=Osnr+L1+Fa+(NoB)+(10*(log10(n)));

PtdB1=10^(Pt1/10);
disp('W',PtdB1,'Power transmitted with 20 repeaters');
