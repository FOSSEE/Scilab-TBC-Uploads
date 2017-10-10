//chapter 6 example 5//
clc
clear
//absorption coeffcient=a,refractive index=n1,reflection coeffcient=Rf,fraction of the incident power absorbed=K,distance=d//
n1=3.5;
d=3*(10^-6);
a=10^5;
W=3*(10^-6);
Rf=((n1-1)^2)/((n1+1)^2);
K=exp(-a*d)*(1-(exp(-a*W)))*(1-Rf);
printf("\n fraction of incident power absorbed=%f \n",K)
a1=(10^6);
W1=(10^-6);
d1=(10^-6);
K1=exp(-a1*d1)*(1-(exp(-a1*W1)))*(1-Rf);
printf("\n fraction of incident power absorbed=%f \n",K1)
