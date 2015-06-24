//Page Number: 9.20
//Example 9.13
clc;
//Given
Mf1=0.003;
//for f<=1.5D+3 Hz
f1=1.5D+3; //Hz

Mf2=0.001;
//for 1.5D+3 <=f<=3D+3 Hz
f2=3D+3; //Hz

Mf3=0;
//for f>3D+3 Hz


//(a) Ac that power transmitted is 100mW
St=100D-3; //W
//As St=2*[{f1*(Mf1*Ac/2)^2}+{f1*(Mf2*Ac/2)^2}+{f2*(Mf3*Ac/2)^2}]
//Neglecting Mf3 as zero
Ac=sqrt((4*St)/(2*f1*(Mf1^2+Mf2^2)));
disp('V',Ac,'Ac for s(t)=100mw:');

//(b)Power in abscence of noise
Zt=2*[{f1*(((Mf1*Ac)/4)^2)}+{f1*(((Mf2*Ac)/4)^2)}+{f2*(((Mf3*Ac)/4)^2)}];
disp('W',Zt,'Power in absence of Noise:');

//(c)
//Given
N0=0.0001D-3; //W/Hz
//Psd=N0/4
//Pt=2*f1*N0/4
Pt=(2*f2*N0)/4;
disp('W',Pt,'Power:');

//(d) SNR at output
SNR=Zt/Pt;
SNRO=10*log10(SNR);
disp('dB',SNRO,'SNR at output for SSB:');

//(e)For DSB
St1=100D-3; //W
//As St=4*[{f1*(Mf1*Ac/2)^2}+{f1*(Mf2*Ac/2)^2}+{f2*(Mf3*Ac/2)^2}]
//Neglecting Mf3 as zero
Ac1=sqrt((4*St)/(4*f1*(Mf1^2+Mf3^2)));

Zt1=4*[{f1*(((Mf1*Ac)/4)^2)}+{f1*(((Mf2*Ac)/4)^2)}+{f2*(((Mf3*Ac)/4)^2)}];

//SNR at output
SNR1=Zt1/Pt;
SNRO1=10*log10(SNR1);
disp('dB',SNRO1,'SNR at output for DSB:');

//3dB increase in SNR
//DSB has higher SNR but SSB os spectarally efficient



