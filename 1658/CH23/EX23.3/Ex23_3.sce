clc;
VCC=18;
R1=7.5*10**3;
R2=6.2*10**3;
R3=3.9*10**3;
RC=1.5*10**3;
B1=200;
B2=200;
RE=1*10**3;
CE=100*10**-6;
VB1=VCC*(R2+R3)/(R1+R2+R3);
disp('V',VB1*1,"VB1=");
VB2=VCC*(R3)/(R1+R2+R3);
disp('V',VB2*1,"VB2=");
IE2=(VB2-0.7)/RE;
IC2=IE2;
IE1=IC2;
IE=IE1;
re1=26*10**-3/IE;
AV1=-re1/re1;
AV2=-RC/re1;
AV=AV1*AV2;
disp(AV);//ans given in book has -ve sign which is wrong

