//Page Number: 334
//Example 6.8
clc;
//Given
Vc=20D+3; //V
V0=32D+3; //V
Pout=75D+3; //W
I=7; //A

//Electronic efficiency
ne=Pout/(V0*I);
disp('%',ne*100,'Electronic efficiency:');

//Overall efficiency
no=Pout/(Vc*I);
disp('%',no*100,'Overall efficiency:');
