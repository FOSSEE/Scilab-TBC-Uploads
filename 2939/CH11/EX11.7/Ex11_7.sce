
//Ex11_7

clc;

//Given:
density1=11.35;// density of copper
l=6.022*10^23;// avogadro constant
ue=0.211;// electron absorption coefficent in barn per electron
// 1 b=10^(-24) cm^2

//solution:

uPb=ue*82;//atomic absorbtion coefficient in b/atom
umPb=(6.022*10^23*uPb*10^-24)/207.2; // mass absorbtion coefficient in cm^2/g
ulPb=umPb*density1;// linear absorption coefficient in cm^-1

// we know that, i2=i1*exp(ulCu*x)
// Case (i) from 0.1 Gy/min to 3.1 mGy/h
i1=6;// in Gy/h
i2=3.1*10^-3;//in Gy/h
x=log(i1/i2)/(ulPb);// thickness of the lead plate
printf("\n The thickness of lead nedded to reduce the intensity of the radiation in cm is =%f",x)

// Case (ii) from 100 Gy/min to 0.1 mGy/h
j1=6000;// in Gy/h
j2=0.1*10^-3;// in Gy/h
y=log(j1/j2)/(ulPb);// thickness of the lead plate
printf("\n \n The thickness of lead nedded to reduce the intensity of the radiation in cm is =%f",y)

// Case (iii) half thickness
z=(0.693)/ulPb;// thickness of the lead plate
printf("\n \n The thickness of lead nedded to reduce the intensity of the radiation in cm is =%f",z)
