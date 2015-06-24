//Ex 2.7.3
clc;clear;close;
format('v',8);

//Given : 
Eta=2;//for Si diode
T=300;//K
VT=T/11600;//V
IbyIo=90/100;
//I=Io*(exp(V/Eta/VT)-1)
V=log(IbyIo+1)*Eta*VT;//V
disp(V*1000,"Saturation value of voltage in mV : ");
VF=0.5;//volts
VR=-0.5;//volts
IFbyIR=(exp(VF/Eta/VT)-1)/(exp(VR/Eta/VT)-1);//ratio
disp(IFbyIR,"Ratio of forward to reverse current : ");
//Answer in the book is wrong.
