//Page Number: 10.18
//Example 10.1
clc;
//Given
Rb=1D+6; //b/s
A=5D-3; //V
N0=0.5D-11; //W/Hz

Tb=1/Rb;
Eb=(A*A*Tb)/2;

//(a) ASK
//Pe=Q(x)
//where
xA=sqrt(Eb/N0);

PeA=(1/2)*erfc(xA/1.414);
disp(PeA,'For ASK:');

//(b) PSK
//Pe=Q(x)
//where
xP=sqrt((2*Eb)/N0);

PeP=(1/2)*erfc(xP/1.414);
disp(PeP,'For PSK:');

//(c) FSK
//Pe=Q(x)
//where
xF=sqrt(Eb/N0);

PeF=(1/2)*erfc(xF/1.414);
disp(PeF,'For FSK:');


