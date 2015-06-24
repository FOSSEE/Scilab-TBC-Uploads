//Chapter 9
//page no 335
//given
clc;
clear all;
no=1;            //refractive index
n1=1.55;            //refractive index
Po=[(n1-no)/(n1+no)]^2;    //fresnal reflection
printf("\n Fresnel reflective coefficient,Po(refl)= %0.5f\n",Po);
Lrefl=-10*log10(1-Po);     //attenuation loss
printf("\n Attenuation based on Fresnel reflective coefficient,L(refl)= %0.1f dB\n",Lrefl);
Ltot=5*Lrefl;
printf("\n Total link attenuation on Fresnel reflections,Ltotal = %0.1f dB",Ltot);
