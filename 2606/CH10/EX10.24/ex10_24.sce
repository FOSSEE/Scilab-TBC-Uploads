//Page Number: 10.41
//Example 10.24
clc;
//(a) Number of constellation Points
//Given
Rs=2400; //bps
Rb=19.2D+3; //bps

//As Rs=Rb/log2M
M=2^(Rb/Rs);
disp(M,'Number of constellation points');

//(b) Bandwidth efficiency
BT=2400; //Symbols/second
n=Rb/BT;
disp('bps/hz',n,'Bandwidth efficiency');

