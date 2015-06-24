//Ex 2.12.6
clc;clear;close;
format('v',8);

//Given : 
Eta=2;//for Si
T=300;//K
VT=26/1000;//V
IbyIo=0.9;
//part (i)
V=log(IbyIo+1)*Eta*VT;//volt
disp(V*1000,"Value of reverse voltage(mV) : ");
//part (ii)
VF=0.2;//volt
VR=-0.2;//volt
IFbyIR=(exp(VF/Eta/VT)-1)/(exp(VR/Eta/VT)-1)
disp(IFbyIR,"Ratio of forward bias current to reverse saturation current : ");
//Answer is wrong in the textbook.
