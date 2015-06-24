//Page Number: 8.10
//Example 8.7
clc;

//Given
Te=127;//Kelvin
T=290;//Kelvin

G1=100;

F2dB=12;//db
F2=(10^(F2dB/10));

F1=1+(Te/T);

F=F1+((F2-1)/G1);
FF=(10*log10(F));
disp('dB',FF,'Overall Noise Figure');

//Equivalent Noise Temperature TE
TE=(F-1)*T;
disp('K',TE,'Equivalent Noise Temperature');


