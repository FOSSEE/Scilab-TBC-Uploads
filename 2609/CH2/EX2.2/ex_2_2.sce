////Ex 2.2
clc;
clear;
close;
format('v',7);
v1=50;//micro V
v2=55;//micro V
Ad=2*10^5;//unitless
CMRR=80;//dB
vid=v2-v1;//micro V
vcm=(v1+v2)/2;//mV
CMRR=10^(CMRR/20);//unitless
vout=Ad*(vid+vcm/CMRR)/10^6;//V
disp(vout,"Output Voltage(V)");;
Verror=vout-Ad*vid/10^6;//V
disp(Verror,"Error Voltage(V)");
error_p=(Verror/vout)*100;//% error
disp(error_p,"Percentage error(%)");
//Percentage error answer is not correct in the book.
