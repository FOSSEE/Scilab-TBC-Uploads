//Page Number: 11.15
//Example 11.6
clc;
//Given
//Pdot-2*Pdash and Pdot+Pdash=1
//Therfore, on solving
Pdot=2/3;
Pdash=1/3;

tdot=0.2; //Sec
tdash=0.6; //Sec
tspace=0.2; //Sec

//Finding H(X)
//As H(X)=-Sum of[P(xi)log2P(xi)] 
//Where i=0 to n;
HofX=(-1)*[{Pdot*log2(Pdot)}+{Pdash*log2(Pdash)}];

//Average time per symbol
Ts=(Pdot*tdot)+(Pdash*tdash)+tspace;

//Average Symbol Rate
r=1/Ts;

//Average information rate
R=r*HofX;
disp('b/symbol',R,'Average information rate :');
