//chapter 8 example 4//
clc
clear
//effective input resistance =Ra,maximum band width=B,total capacitance=Ct,mean thermal energy noise current=ith,open loop gain =A,total effective load resistance=Rtl//
Ra=5*(10^6);//in ohms//
Rb=5*(10^6);//in ohms//
Rtl=(Ra*Rb)/(Ra+Rb);//total effective load resistance//
Ct=5*(10^-12);//in farads//
B=1/(2*%pi*Rtl*Ct);
printf("\n a) maximum bandwidth=%f Hz\n",B)
T=300;//in kelvin//
Kb=1.38*(10^-23);
ith=((4*Kb*T)/Rtl)*(10^27);
printf("\n b) mean thermal energy noise current per unit band width=%f *(10^-27) A2Hz-1\n",ith)
A=400;//open loop gain//
Rf=(10^5);//in ohms//
B1=A/(2*%pi*Rf*Ct);
printf("\n C) a) maximum bandwidth without eualization for the transimpedance configuration=%f Hz\n",B1)
ith=((4*Kb*T)/Rf)*(10^25);
printf("\n C) b) mean square thermal noise current=%f*(10^-25) Hz\n",ith)