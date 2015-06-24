//Ex 2.9.5
clc;clear;close;
format('v',8);

//Given : 
Io1=10^-12;//A
Io2=10^-10;//A
I=2;//mA
Eta=1;//constant
T=27+273;//K
VT=26/1000;//V
//I=I1+I2
V=(log(I*10^-3/(Io1+Io2))+1)*Eta*VT;//V
disp(V,"Voltage across the diodes in V : ");
//Ans in the book is not accurate.
