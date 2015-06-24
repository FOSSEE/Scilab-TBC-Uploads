//Example 5_37
clc;
clear;
close;
format('v',5);
//given data : 
I1=0.5;//mA
V1=340;//mV
I2=15;//mA
V2=465;//mV
kBTBye=25;//mV(It is kB*T/e)
//I=Is*(exp(V/Eta/kBTBye)-1)
Eta=(V2/kBTBye-V1/kBTBye)/log(I2/I1);//neglecting 1 as exp(V/Eta/kBTBye)>>1
disp(Eta,"Ideality Factor(Eta) : ");
