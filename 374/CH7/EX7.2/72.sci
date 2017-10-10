//chapter 7 example 2//
clc
clear
//longitudnal displacement=S,numerical aperure=NA,core radius=a,coupling efficiency=ns1.critical angle=Am//
NA=0.2;
Am=asind(NA);//in deg//
printf("\n critical angle=%f deg\n",Am)
a=25*(10^-6);//in mts//
S=2.5*(10^-6);//in mts//
ns1=((a/(a+(S*tand(Am))))^2)*100;
printf("\n coupling efficiency=%f percent\n",ns1)
