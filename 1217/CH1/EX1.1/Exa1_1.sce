//Exa 1.1 
clc;
clear;
close;
//given data
Icq=100;//in uA
BETAac=100;//unitless
BETAdc=100;//unitless
Ad=100;//unitless
CMRRdB=60;//in dB
//part (a)
IE=2*Icq;//in UA
VT=25;//in mV
re=2*VT/IE;//in ohm
RC=Ad*re;//in Kohm
CMRR=10^(CMRRdB/20);//using formula CMRRdB=20log10(CMRR)
//calculate RE using formula CMRR=1+2*RE/re
RE=((CMRR-1)*re)/2;//in Kohm
disp("Value of RC is "+string(RC)+" Kohm"+" and value of RE is "+string(RE)+" Kohm");
//part (b)
Ri1=2*BETAac*re;//in kohm
Ri2=2*BETAac*re;//in kohm
disp("Value of Ri1 is "+string(Ri1)+" Kohm"+" and value of Ri2 is "+string(Ri2)+" Kohm");
//part (c)
Ric=BETAac*(re+2*RE);//in kohm
disp("Value of Ric is "+string(Ric)+" Kohm.");