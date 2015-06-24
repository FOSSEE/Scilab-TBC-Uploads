//chapter 12
//page no 542
//ex 12_50
//given
clear;
clc;
m=3;
n=1;
Tb=100;         //ps
l=1;            //nm
D=0.07;         //ps/nm^2*km
lmn=1;          //nm
lmo=2;          //nm
Do=0.1;         //ps/nm-km
Lc=4*Tb/[5*D*lmn*(lmn+2*lmo)];//Collision length  in km
printf("\n Collision length without dispersion slope compensation = %0.1f km\n",Lc);//result
Lc2=2*Tb/[5*Do*lmn];//Collision length in km
printf("\n Collision length with dispersion slope compensation = %0.0f km",Lc2);//result

