//Page Number: 8.13
//Example 8.12
clc;
//Given, Noise figure
NF=2; //dB
F=(10^(NF/10));

AG=12; //dB
A=(10^(AG/10));

//(a)Total Output Noise Power

//Also given,Input signal power 
Pi=1; //W

//Input Noise power Pni
Pni=100D-3; //W

//Input SNR
Isnr=Pi/Pni;

//Output SNR
Osnr=Isnr/F;

//Total output signal power
Po=Pi*A; //W

//Total output noise power
N=Po/Osnr; //W
disp('W',N,'Total Output Noise Power');

//(b)Signal to Noise and disortion ratio

//Given. 2% is disortion
Di=2/100;

//Total disortion
D=Di*A; //W

//Useful Power
S=(1-Di)*A; //W

//As given,SNAD=10*(log10(S+N+D)/(N+D));
SNAD=10*(log10((S+N+D)/(N+D)));
disp('dB',SNAD,'SNAD:');
