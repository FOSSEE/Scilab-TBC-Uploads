clc;
//page no 571
//prob no. 16.4
//A dipole antenna with efficency=85% given
n=0.85;D_dBi=2.14;//Directivity in dBi
//Determination of gain in dB
D=10^(D_dBi/10);
G=D*n;//Determination of gain
G_dBi=10*log10(G);//Converting to dBi
disp('dBi',G_dBi,'The gain is');