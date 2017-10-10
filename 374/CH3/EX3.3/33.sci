//chapter 3 example 3//
clc
clear
//core refractive index=n1,cladding refractive index=n2,refractive index of air=na,numerical aperture=NA,acceptance angle=A,multiple time dispersion=M,relative refractive index difference=d,speed of light=C//
n1=1.55;
n2=1.51;
d=n1-n2;
n=(n1+n2)/2;
NA=sqrt(2*d*n);
printf("\n 1) numerical aperture=%f.\n",NA);
A=asind(NA);
printf("\n 2) acceptance angle=%f.\n",A);
C=(3*(10^8));//in mts per sec//
M=((n1*d)/(n2*C))*(10^12);
printf("\n 3) multiple time dispersion=%f ns/km \n",M);

