//Page Number: 10.43
//Example 10.27
clc;
//Given
Rb=4.8D+3; //b/s
bw=3.2D+3; //Hz

//BPSK can give maximum spectral efficiency of 1bps/Hz, therefore not suitable
//QPSK can give twice spectral efficiency,2bps/Hz, therefore
qpsk=2*bw;
//PSK can give thrice spectral efficiency,3bps/Hz, therefore
psk=3*bw;

//QPSK is most suitable
Rs=Rb/2;
//Roll off Factor
a=(bw/Rs)-1;
ap=a*100;
disp('%',ap,'Roll off factor:');
