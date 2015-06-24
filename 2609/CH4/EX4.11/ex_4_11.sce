////Ex 4.11
clc;
clear;
close;
format('v',5);
Ri=2;//kohm
Rf=200;//kohm
//For 741C
fo=5;//Hz
AOL=2*10^5;//unitless
UGB=1;//MHz
ACL=-AOL*Rf/(Rf+Ri+AOL*Ri);//unitless(Exact)
disp(ACL,"Close loop voltage gain");
fodash=fo*AOL/-ACL;//Hz
disp(fodash/1000,"Bandwidth, fo_dash(kHz)");
