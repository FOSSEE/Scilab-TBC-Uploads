
//Ex11_5

clc;

//Given:
i1=4000;// initial intensity of radiaton
i2=2000;// final intensity of radiation
density1=8.96;// density of copper
l=6.022*10^23;// avogadro constant
ue=0.211;// electron absorption coefficent in barn per electron
// 1 b=10^(-24) cm^2

//solution:

uCu=ue*29;//atomic absorbtion coefficient in b/atom
umCu=(6.022*10^23*uCu*10^-24)/63; // mass absorbtion coefficient in cm^2/g
ulCu=umCu*density1;// linear absorption coefficient in cm^-1

// we know that, i2=i1*exp(ulCu*x)

x=log(i1/i2)/(ulCu);// thickness of the copper plate

printf("\n The thickness of copper nedded to reduce the intensity of the radiation in cm is =%f",x)
