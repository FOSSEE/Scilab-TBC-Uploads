//Page Number: 8.7
//Example 8.2
clc;
//Given,
R=1000;
T=27; //degree celsius
TK=T+273; //kelvin

// We know, rms noise voltage is 4RKTB
K=1.38D-28;
B=10;

V=sqrt(4*R*K*TK*B);
disp('V',V,'Rms noise voltage:');
