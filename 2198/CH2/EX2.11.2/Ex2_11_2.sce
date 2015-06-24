//Ex 2.11.2
clc;clear;close;
format('v',8);

//Given : 
V=0.45;//volt
Eta=2;//for Si
T1=27+273;//K
T2=125+273;//K
VT1=T1/11600;//V
VT2=T2/11600;//V
I1BYIo1=exp(V/Eta/VT1);
I2BYIo2=exp(V/Eta/VT2);
m=1.5;//for Si
VGO=1.21;//volt
Io1BYIo2=(T1/T2)^m*exp(-VGO/Eta/VT1+VGO/Eta/VT2);//constant
I2BYI1=I2BYIo2/I1BYIo1/Io1BYIo2;
disp(I2BYI1,"Factor by which current increases : ");
//Answer is wrong in the textbook.
