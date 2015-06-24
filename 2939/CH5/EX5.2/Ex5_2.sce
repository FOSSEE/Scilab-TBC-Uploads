
// Ex5_2

clc;

// Given:
E0=5;// in MeV
m=1;
M=7

// Solution:

Erecoil=(4*5*m*M*((sin(45*3.14/180))^(2)))/((m+M)^2);
Escat=E0-Erecoil;

printf("\n The energy of protons scattered through an angle of 90 deg. is = %f MeV",Escat)
Eresi=E0-0.48;

Erecoil2=(14/64)*Eresi;
Escat2=Eresi-Erecoil2;
printf("\n \n The energy of proton observed at 90 deg. after they have excited the lithium to a level of 0.48 MeV is = %f MeV",Escat2)
