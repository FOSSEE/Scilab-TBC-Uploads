//Ex 1.20
clc;clear;close;
format('v',6);
Vout=5;//V
Beta=180;//unitless
VBE=0.7;//V
VEE=10;//V
Vout=5;//V
R1=22;//kohm
R2=2.2;//kohm
IREF=(VEE-VBE)/R1;//mA
IC=(IREF-VBE/R2)/(1+2/Beta);//mA
IC1=IC*1000;//micro A(as VBE1=VBE2 IC1=IC2)
IC2=IC*1000;//micro A
disp(IC2,IC1,"Current IC1 & IC2 (micro A) : ");
RC=(VEE-Vout)/(IC1*10^-3);//kohm
disp(RC,"Value of Rc is (kohm) : ");
//Answer is wrong in the textbook.
