//Example 5_20
clc;
clear;
close;
format('v',5);
//given data : 
I=5;//micro A
V=10;//V
//1/I0*dI0/dT=0.15 & 1/I*dI0/dT=0.07
I0=I/(0.15/0.07);//micro A
//I=I0+IR
IR=I-I0;//micro A
R=V/IR;//Mohm
disp(R,"Leakage Resistance(Mohm)");
