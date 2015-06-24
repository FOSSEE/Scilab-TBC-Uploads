clear;
clc;

//Example - 1.10
//Page number - 27
printf("Example - 1.10 and Page number - 27\n\n");

//Given
// log(P)=-(1640/T)+10.56 (solid)
// log(P)=-(1159/T)+7.769 (liquid),where T is in K
// F+P=C+2, at triple point F+3=1+2 or,F=0 i.e,vapour pressure of liquid and solid at triple point are same,we get
// -(1640/T)+10.56 = -(1159/T)+7.769

T = (1640-1159)/(10.56-7.769);//[K]
P = 10^((-1640/T)+10.56);//[torr]

printf(" The temperature is %f K\n",T);
printf(" The pressure is %f torr (or mm Hg)",P);



