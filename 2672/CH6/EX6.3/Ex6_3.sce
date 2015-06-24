//Example 6_3
clc;
clear;
close;
format('v',5);
//given data : 
r1BYr2=10000;//multipying factor
//r=Eta*VT/I0*eps^(-V/Eta/VT)
//log(r1BYr2)=(-V1/Eta/VT)/(-V2/Eta/VT)=delV/Eta/VT
VT=26;//mV
Eta=2;//for silicon
delV=log(r1BYr2)*Eta*VT;
disp(delV,"Break region for Si(mV)");
Eta=1;//for Germenium
delV=log(r1BYr2)*Eta*VT;
disp(delV,"Break region for Ge(mV)");
//Answer in the book is not accurate.
