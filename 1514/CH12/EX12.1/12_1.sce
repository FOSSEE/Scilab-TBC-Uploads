//chapter 12
//example 12.1
//page 364
clear all;
clc ;
//given
Av=75;//voltage gain
R10=12;//coupling resistor in kohm
R7=R10;
R9=1000*R10/Av;
printf("\nFeedback component R9 is %d ohm,select 150ohm standard value to make Av \nslightly greater than specified.",R9);
R9=150;
f1=100;
XC6=1000*R10/100;
C6=10^6/(2*%pi *f1*XC6);
printf("\ncapacitor C6 is %.1f microF,use 15 microF standard value",C6);
XC2=R9;
C2=10^6/(2*%pi *f1*XC2);
printf("\ncapacitor C2 is %.1f microF,use 15 microF standard value",C2);
