//Page Number: 333
//Example 6.5
clc;
//Given
Vc=11D+3; //V
Ir=0.85; //A
V0=31D+3; //V
Pout=50D+3; //W
I=7; //A

//Electronic efficiency
ne=Pout/(V0*I);
disp('%',ne*100,'Electronic efficiency:');

//Overall efficiency
no=Pout/(Vc*(I-Ir));
disp('%',no*100,'Overall efficiency:');

//Answer for elecytronic efficiency should be 23.04% but it is given as 36.4 in book
