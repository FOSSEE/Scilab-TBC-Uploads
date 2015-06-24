//Page Number: 9.17
//Example 9.10
clc;
//Given
BW=10D+3; //Hz
SNR=40; //dB
SNRO=10^(SNR/10);
P=40; //dB
PL=10^(P/10);
n=2D-9; //W/Hz
USx2=0.5;
//For DSB, AM and SSB bandwidth requirement
BTD=2*BW;
BTA=2*BW;
BTS=BW;
disp('Hz',BTD,'Transmission Bandwidth for DSB:');
disp('Hz',BTA,'Transmission Bandwidth for AM:');
disp('Hz',BTS,'Transmission Bandwidth for SSB:');


//Pt for DSB and SSB
//As SNRO=Si/nBW
Si=n*BW*SNRO; //W
//Considering Channel loss
ST=Si*PL;
disp('W',ST,'Power transmission for DSB and SSB:');

//Pt for AM
//As SNRO=x*Si/nBW
//x=USx2/(1+USx)
x=USx2/(1+USx2);
Si1=(n*BW*SNRO)/x; //W
//Considering Channel loss
ST1=Si1*PL;
disp('W',ST1,'Power transmission for AM:');
