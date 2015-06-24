//Page Number: 8.8
//Example 8.3
clc;

//Given,
G=100;
G1=(10^(G/10));

T=30;
Te=270;

//We know,output noise power=GKB(T+Te)
K=1.38D-23;
B=1.5D+6;

No=G1*1.38D-23*1.5D+6*(T+Te);
disp('W',No,'Output Noise Power');
