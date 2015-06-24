//Page Number: 8.15
//Example 8.15
clc;

//Given Noise figure
NF=5; //dB
F=(10^(NF/10));

Ta=1050; //Kelvin

//(a) Overall Noise Figure
T=20; // degree Celsius
To=T+273; //Kelvin

//Effective Noise temperature
Te=((F-1)*To);
disp('K',Te,'Effective Noise temperature');

//Overall effective Noise Temperature
TIN=Ta+Te;
disp('K',TIN,'Overall Effective Noise temperature');

//Overall noise figure
ONF=(1+(TIN/To));
ONFdB=(10*(log10(ONF))); //dB

disp('dB',ONFdB,'Overall Noise Figure:');


//(b)Input Signal Power
//Given Output SNR
Outsnr=6; //dB
Osnr=(10^(Outsnr/10));

Isnr=ONF*Osnr;

//Input Noise Power=KTB
K=1.38D-23;
B=50000;
Pni=K*TIN*B; //W

//Input signal Power
Psi=Isnr*Pni; //W
PsidBW=(10*(log10(Psi/1))); //dBW
disp('dBW',PsidBW,'Input signal Power:');


//(c)Minimum detectable signal Vmin
//Given
Osnr=10; //dB
R=50; //Ohms

FF1=3; //dB
F1=(10^(FF1/10));

FF2=5; //dB
F2=(10^(FF2/10));

GG1=7; 
G1=(10^(GG1/10));
//Using F=F1+((F2-1)/G1)

Fa=F1+((F2-1)/G1);

Fa1=(10*(log10(Fa)));

//Equivalent Noise Tempertaure
Te1=((Fa-1)*To);
disp('K',Te1,'Equivalent Noise temperature:');

//Overall effective Noise Temperature
TIN1=Ta+Te1;
disp('K',TIN1,'Effective Noise temperature:');

//Input Noise Power=KTB
Pni1=K*TIN1*B; //W

//Overall noise figure
ONF1=(1+(TIN1/To));
ONFdB1=(10*(log10(ONF)));
disp('W',ONFdB1,'Overall Noise Figure:');

//Input SNR
Isnr1=ONF1*Osnr;

//Input signal Power
Psi1=Isnr1*Pni; //W
disp('W',Psi1,'Input Signal Power:');

//Now as Vmin^2/R=Psi1
//Therefore
Vmin=sqrt(Psi1*R);
disp('V',Vmin,'Minimum detectable signal Vmin:');












