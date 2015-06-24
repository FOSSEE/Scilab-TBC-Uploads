//Page Number: 9.23
//Example 9.17
clc;
//Given
oSNR=40; //dB
SNRO=10^(oSNR/10);
n=2D-10; //W/Hz
l=50; //dB
PL=10^(l/10);
B=15D+3; //Hz
Sx=1/2;
//(a) DSB Modulation
BTD=2*B;
disp('Hz',BTD,'Transmission bandwidth for DSB:');
//As SNRO=Si/(n*B)
SiD=SNRO*n*B;
STD=SiD*PL;
disp('W',STD,'Average Power transmitted for DSB:');

//(b) AM
U=1;
U2Sx=U*U*Sx;
BTA=2*B;
disp('Hz',BTA,'Transmission bandwidth for AM:');
//As SNRO=x*Si/(n*B)
//where x=USx/(1+USx)
x=U2Sx/(1+U2Sx);
SiA=(SNRO*n*B)/x;
STA=SiA*PL;
disp('W',STA,'Average Power transmitted for AM:');

//(c)PM
kp=3;
BTP=2*(kp+1)*B;
disp('Hz',BTP,'Transmission bandwidth for PM:');
//As SNRO=kp^2*Sx*Si/(n*B)
SiP=(SNRO*n*B)/(Sx*(kp^2));
STP=SiP*PL;
disp('W',STP,'Average Power transmitted for PM:');

//(d)FM
D=5;
BTF=2*(D+1)*B;
disp('Hz',BTF,'Transmission bandwidth for FM:');
//As SNRO=3*D^2*Sx*Si/(n*B)
SiF=(SNRO*n*B)/(3*(D^2)*Sx);
STF=SiF*PL;
disp('W',STF,'Average Power transmitted for FM:');

