//Ex 2.6.1
clc;clear;close;
format('v',6);

//Given : 
Ge=4.4*10^22;//atoms/cm^3
NA=Ge/10^8;//per cm^3
NA=NA*10^6;//per m^3
ND=NA*10^3;//per m^3
ni=2.5*10^13;//per cm^3
ni=ni*10^6;//per m^3
VT=26;//mV
Vj=VT*log(NA*ND/ni^2);//mV
disp(Vj,"Junction potential in mV : ");
