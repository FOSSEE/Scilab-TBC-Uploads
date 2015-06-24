//Page Number: 8.14
//Example 8.14
clc;
//Given
GG1=20;//dB
G1=(10^(GG1/10));

FF1=6;//dB
F1=(10^(FF1/10));

GG2=60;//dB
G2=(10^(GG2/10));

FF2=16;//dB
F2=(10^(FF2/10));

LF=3; //dB
FC=(10^(LF/10));
GC=1/FC;

//(a)Overall Noise Figure
//Usinng F=(F1+((F2-1)/G1)+((F3-1)(G1*G2)));

Fa=(F1+((FC-1)/G1)+((F2-1)/(G1*GC)));
FadB=(10*(log10(Fa)));
disp('db',FadB,'Overall Noise Figure:');


//(b)Noise figure, if pre-amplifier is removed and gain increased by 20dB

Fb=FC+((F2-1)/GC);
FbdB=(10*(log10(Fb)));
disp('db',FbdB,'Overall Noise Figure:');

//(c)Change in noise figure
//Again usinng F=(F1+((F2-1)/G1)+((F3-1)(G1*G2)));
Fc=(FC+((F1-1)/GC)+((F2-1)/(G1*GC)));
FcdB=(10*(log10(Fc)));

disp('db',FcdB,'Overall Noise Figure:');
