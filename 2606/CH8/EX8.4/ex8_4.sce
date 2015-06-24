//Page Number: 8.8
//Example 8.4
clc;

//Given,
R=50;
osnr=0;
SNRo=(10^(osnr/10));
disp(SNRo,'Output SNR');

//As Pni=KTB
K=1.38D-23;
T=290;
B=5D+5;
Pni=K*T*B;
disp('W',Pni,'Input noise power');

//Psi=V^2/R
//Given V=5*10^-6V
V=0.5D-6;
Psi=(V^2)/R;
disp('W',Psi,'Signal Power Input');

isnr=(Psi/Pni);
disp(isnr,'Input SNR');

F=(isnr/SNRo);
disp(F,'Noise Factor');

NF=10*log10(F);
disp('dB',NF,'Noise figure');
