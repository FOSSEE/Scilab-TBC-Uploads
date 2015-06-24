//Page Number: 11.26
//Example 11.24
clc;

//(a) Information Rate
//Given
n=1.25; //times
l=256; //Levels
fM=4D+3; //Hz //Bandwidth
Nr=2*fM; //Nyquist Rate
r=Nr*n;
HofX=log2(l);
//Information rate
R=r*HofX;
disp('b/s',R,'Information Rate:');

//(b)
//As Channel Capacity
//C=B*(log2(1+(S/N)));
B=10^4; //Hz
SNdB=20; //dB
SN=10^(SNdB/10);
C=B*(log2(1+(SN)));
disp('b/s',C,'Channel Capacity:');

//As R>C, error free transmission isnt possible

//(c)For error free transmission
C1=R;
//Therfore S/N
SN1={2^(C1/B)}-1;
SN1dB=10*(log10(SN1));
disp('dB',SN1dB,'For error free transmission S/N:');

//(d)Bandwidth for error free transmission
SN2dB=20; //dB
SN2=10^(SN2dB/10);
//As Channel Capacity
//C=B*(log2(1+(S/N)));
B=C1/(log2(1+(SN2)));
disp('Hz',B,'Bandwidth for error free transmission:');
//Therefore bandwidth should be greater than or equal to B


