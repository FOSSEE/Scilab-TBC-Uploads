//Chapter 9
//page no 335
//given
clc;
clear all;
no=1;            //refractive index
n1=1.35;            //refractive index
Po=[(n1-no)/(n1+no)]^2;     //fresnal reflection
printf("\n Po(refl)= %0.3f",Po);
Lrefl=-10*log10(1-Po);      //attenuation loss
printf("\n L(refl)= %0.1f dB",Lrefl);
