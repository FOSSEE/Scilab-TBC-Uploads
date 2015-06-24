




//Chapter 2
//page no 56
//given
clc;
clear ;
Is=0.12;          //in pAmp
V=0.6;          //in V
T=293;             //in Kelvin
k=1.38*10^-23;      //Boltzmann's Constant in J/K
q=1.6*10^-19;     // charge of electron in C
Vt=k*T/q;       //thermal voltage
printf("\n VT(20 deg Cel) is  %0.5f V \n",Vt);//result in book is misprint
T1=373;             //in Kelvin
n=1.25;
Vt1=k*T1/q;      //thermal voltage
printf("\n VT(100 deg Cel) is  %0.5f V \n",Vt1);
I=Is*(exp(V/(n*Vt1))-1);        //forward biasing current in mircoA
printf("\n I(100 deg Cel) is  %0.2f microA \n",I/10^6);//result
