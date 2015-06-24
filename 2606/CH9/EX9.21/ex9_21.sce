//Page Number: 9.27
//Example 9.21
clc;
//Given
BW=5000; //Hz
P=0.1; //W
CBW=100D+3; //Hz
A=80; //dB
A1=10^(-A/10);
N0=2*(0.5D-12); //W/Hz
Pt=10D+3; //W

//We know, CBW=2*(D+1)*BW
//Therefore
D=(CBW/(2*BW))-1;
kp=D;
Si=Pt*A1;
Sx=P;
//We know
//SNR=((kp^2)*Si*Sx)/(N0*BW);

SNR=((kp^2)*Si*Sx)/(N0*BW);
SNR1=10*log10(SNR);
disp("dB", SNR1,"SNR at output: ");




