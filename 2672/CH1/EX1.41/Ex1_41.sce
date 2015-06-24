//Example 1_41
clc;
clear;
close;
format('v',5);
//given data :
R1=5;//ohm
R2=5;//ohm
R3=10;//ohm
R4=10;//ohm
RAB=(R1+R3)*(R2+R4)/(R1+R3+R2+R4);//ohm
disp(RAB,"Equivalent resistance(ohm)");
