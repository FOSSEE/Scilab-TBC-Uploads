//Page Number: 8.11;
//Example 8.9
clc;

//(a)Noise Figure
//Given
//Loss Fcator
IL=1.5; //dB
IL1=(10^(IL/10));

//Noise figure
F1=1.41;
G1=1/F1;

G2=10; 
GG2=(10*log10(G2)); //dB

G3=100;
GG3=(10*log10(G3)); //dB

F2=2; //dB
F3=2; //dB

FF2=(10^(F2/10));
FF3=(10^(F3/10));

F=(F1+((FF2-1)/G1)+((FF3-1)/(G1*GG2)));
FF=(10*log10(F));
disp('dB',FF,'Noise figure of cascade');

//(b) SNR at output
//Given
Pin=-90; //dBm
Pout=Pin-IL+GG2+GG3; //dBm

//Pn=Gcas*K*Te*B (cascade)
K=1.38D-23;
To=290; //Kelvin
B=1D+8;
Gcas=GG2+GG3-IL;
Gcas1=(10^(Gcas/10));
Pn=K*To*(F-1)*B*Gcas1; //W

Pn1=(10*(log10(Pn/1D-3)));
disp('dBm',Pn1,'Noise power output:');

SNR=Pout-Pn1;
disp('dB',SNR,'Signal to Noise ratio:');

//(c)Best Noise Figure
//G1 after G2 after IL

Fcas=(FF2+((FF3-1)/G3)+((IL1-1)/(G3*G2)));
Fcas1=(10*(log10(Fcas)));

disp('dB',Fcas1,'Noise figure will be:');
