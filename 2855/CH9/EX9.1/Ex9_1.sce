//Chapter 9
//page no 296
//given
clc;
clear all;
n2=1.35;            //refractive index
n1=1.4;            //refractive index
Wo=asind(n2/n1);             //in radians
printf("\n Critical Angle,Wo = %0.2f degree\n",Wo);
NA=sqrt(n1^2-n2^2);
printf("\n Numerical Aperture,NA = %0.2f \n",NA);
Wa=asind(NA);                //in radians
printf("\n Angle of acceptance,Wa = %0.2f degree\n",Wa);
