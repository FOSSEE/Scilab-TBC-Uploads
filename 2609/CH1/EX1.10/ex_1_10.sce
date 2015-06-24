//Ex 1.10
clc;
clear;
close;
format('v',5);
Vout=5;//V
Beta=180;//unitless
R=22;//kohm
VCC=10;//V
VBE=0.7;//V
IREF=(VCC-VBE)/R;//mA
IC=(IREF-VBE/R)/(1+2/Beta);//mA
RC=(VCC-Vout)/IC;//kohm
disp(IC,"IC1 & IC2 in mA are ");
disp(RC,"RC in kohm is ");
//Answer in the book is wrong.
