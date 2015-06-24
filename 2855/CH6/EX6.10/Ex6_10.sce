
//chapter 6
//page no161
//exa 6_10
//given
clear;
clc;
vcc=-5;             //in v
imod=35;            //in mA
ibias=18;           //in mA
vbias=-2;           //in v
vout=2;             //in v
tj=30;            //degree cel
icc=140;            //in mA
Pt=(-vcc*icc*10^-3)+(-vcc-vout)*imod*10^-3+(-vcc+vbias)*ibias*10^-3;
printf("Pt= %0.0f mW",Pt*1000);
Tj=30;//in degree
Tj_a=Tj*Pt;
Tcase=125-Tj_a;//in degree
printf("\n Tcase(max)= %0.0f degree Cel",Tcase);
