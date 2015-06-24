////Ex 2.8
clc;
clear;
close;
format('v',5);
ICQ=200;//micro A
Beta=1000;//unitless
Ad=180;//unitless
CMRR=80;//dB
VT=26;//mV
re=VT/(ICQ/1000);//ohm(Let re=re1=re2)
RC=Ad*re/1000;//kohm
CMRR=10^(CMRR/20);//untless
RE=(CMRR-1)*re/2/1000;//kohm
disp(RE,RC,"Value of RC & RE(kohm)");
Rid=2*Beta*re/1000;//kohm(Let Rid=Rid1=Rid2)
disp(Rid,"Differntial input resistance, Rid(kohm)");
Ric=(Beta+1)*(re+2*RE*1000)/10^6;//Mohm
disp(Ric,"Common mode input resistance, Ric(Mohm)");
