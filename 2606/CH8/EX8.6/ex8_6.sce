//Page Number: 8.9
//Example 8.6
clc;

//Given,Stage 1
SNRo=120;
Pni=0.01D-6; //W
G1=20;

//Stage 2
F2=12; //dB
FF2=(10^(F2/10));
G2=30;

//Stage 3
F3=9.3; //dB
FF3=(10^(F3/10));
G3=35;

//(a)Nosie factor and noise figure of Stage 1
F=5.6; //dB
FF=(10^(F/10));

//As F=F1-((F2-1)/G1)-((F3-1)*(G1G2));
Fa=FF-((F2-1)/G1)-((FF3-1)/(G1*G2));
disp(Fa,'Noise factor of stage 1');

FadB=(10*(log10(Fa))); //dB
disp('dB',FadB,'Noise figure of stage 1');


//(b)Input signal power of stage 1
Psi=Pni*Fa*SNRo;
disp('W',Psi,'Input signal power of stage 1');


//(c)Nosie added by stage 1
N=(Fa-1)*G1*Pni; 
disp('W',N,'Noise added by stage 1');
