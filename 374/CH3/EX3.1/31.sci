//chapter 3 example 1//
//length of fibre=l,average optical power=Pin,average output power=Pout,signal attenuation per km=A//
clc
clear
Pin=100*(10^-6);//in watts//
Pout=2.5*(10^-6);//in watts//
l=10//in kilometers//
A=(10*(log10(Pin/Pout)))/l;//per km//
printf("\n a) signal attenuation per km=%f per km.\n",A);
//sigmal attenuaion in db=Adb,total attenuation for 11kms=A1,attenuation for 3 splice each with 0.8db=A2,overall attenuation in the link=Anet,ratio between input and output power=x//
Adb=(A*10);
printf("\n b) signal attenuation in decibels=%f db.\n",Adb);
A1=(A*11);
A2=2.4;
Anet=A1+A2;
printf("\n c) overall signal attenuation in decibels=%f db.\n",Anet);
x=(10^(Anet/10));
printf("\n d) ratio between input and output power=%f\n",x);