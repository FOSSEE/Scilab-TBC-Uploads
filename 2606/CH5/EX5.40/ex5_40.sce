//Page Number: 5.44
//Example 5.40
clc;
//Given,
M=16;
sr=40000;
a=0.3;
//(a) Bit Rate
n=log2(M);
br=sr*n;
disp('b/s',br,'Bit Rate: ');

//(b)
//As 2*fB=(1+a)*R/log2M
//Given 
bw=110D+3; //Hz  //=2*fB

M=2^(((1+a)*br)/bw);
MM=round(M);
disp(MM,'Value of M');

//(c)Band Rate
band=br/(log2(n));
disp('Symbols/s',band,'Band Rate');

//(d) Spectral efficiency
BT=((1+a)*br)/2;
Eff=br/BT;
disp('b/s Hz',Eff,'Spectral efficiency');
