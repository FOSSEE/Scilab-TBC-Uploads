//chapter 3 example 5//
clc
clear
//wavelength of single mode fibre=l,attenuation=A,core diameter of fibre=d,laser sourcr bandwidth=BW,threshold optical power for brillouin=Pb,threshold optical power for raman scattering=Pr//
d=6;//in micrometer//
l=1.3;//in micrometer//
A=0.5;//in db per km//
BW=0.6//in GHz//
Pb=(4.4*(10^-3))*(d^2)*(l^2)*(A*BW)*1000;//in watts//
printf("\n threshold optical power for brillouin=%f mW.\n",Pb);
Pr=(5.9*(10^-2))*(d^2)*l*A;
printf("\n threshold optical power for raman scattering=%f W.\n",Pr);