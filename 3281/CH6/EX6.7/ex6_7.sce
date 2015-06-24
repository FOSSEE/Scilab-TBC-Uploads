//Page Number: 334
//Example 6.7
clc;
//Given
Vc=12D+3; //V
V0=30D+3; //V
Pout=60D+3; //W
I=7.5; //A

//Electronic efficiency
ne=Pout/(V0*I);
disp('%',ne*100,'Electronic efficiency:');

//Overall efficiency
no=Pout/(Vc*I);
disp('%',no*100,'Overall efficiency:');
