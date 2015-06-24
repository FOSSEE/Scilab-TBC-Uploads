//Exa 10.15
clc;
clear;
close;
//Given Data :
format('v',9);
f=50;//in Hz
V=240;//in Volts
TotalLoad=200+80;//in KW
cosfi_1=0.8;//unitless
tanfi_1=tand(acosd(cosfi_1));
cosfi_2=0.9;//unitless
tanfi_2=tand(acosd(cosfi_2));
//(i)
OA=200;//in KW
OD=280;//in KW
CM=OA*tanfi_1-OD*tanfi_2;//in KVAR
disp(CM,"Leading KVAR supplied by the motor(in KVAR) :");
//(ii)
BM=80;//in KW
CM=15.6;//in KW
KVA_Rating=sqrt(BM^2+CM^2);//in KVA
disp(KVA_Rating,"KVA rating(in KVA) :");
//(iii)
BC=KVA_Rating;//in KW
cosfi_m=BM/BC;//unitless
disp(cosfi_m,"P.F. Of the motor  : ");
//Note : Answer of (i) part is wrong in the book is wrong