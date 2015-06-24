clc
clear
//Initialization of variables
P=70 //psia
Pt=110 //psia
V=20 //cu ft
R0=1545 //Universal gas constant
T=540 //R
M=32 //Molecular weight of Oxygen
M2=28 //Molecular weight of Nitrgoen
//calculations
N=P*V*144/(R0*T)
mo=M*N
Pn=Pt-P
N2=Pn*V*144/(R0*T)
mn=N2*M2
Vo=N*R0*T/(144*Pt)
Vn=N2*R0*T/(144*Pt)
Vn2=V-Vo
//results
printf("Mass of oxygen = %.2f lb",mo)
printf("\n Mass of nitrogen = %.2f lb",mn)
printf("\n Partial volume of oxygen = %.2f cu ft",Vo)
printf("\n Partial volume of nitrogen = %.2f cu ft",Vn)
printf("\n In case 2, Partial volume of nitrogen = %.2f cu ft",Vn2)
