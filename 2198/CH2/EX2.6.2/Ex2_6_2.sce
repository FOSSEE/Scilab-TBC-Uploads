//Ex 2.6.2
clc;clear;close;
format('v',6);

//Given : 
ni=2.5*10^15;//per cm^3
Ge=4.4*10^22;//atoms/cm^3
NA=Ge/10^8;//per cm^3
NA=NA*10^6;//per m^3
ND=NA*10^3;//per m^3
ni=ni*10^6;//per m^3
T=27+273;//K
VT=T/11600;//V
Vo=VT*log(NA*ND/ni^2);//V
disp(Vo,"Contact potential in V : ");
