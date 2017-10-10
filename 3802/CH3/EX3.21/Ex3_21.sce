//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex3_21.sce

clc;
clear;
P1=7e3;   //supplied power in watt
pf1=0.8;  //lagging power factor 
//below values are taken from the given circuit (fig.3.39)
Z1=complex(0.8,1);
Z2=complex(1.4,1.6);
V1=440;    //terminal voltage in volt
PL=10e3;    //power required by the load in watt
pf2=0.8;    //lagging power factor

I1=P1/(V1*pf1);
Pr1=P1-(I1^2*real(Z1));
Q1=P1*tand(acosd(pf1));
Qr1=Q1-(I1^2*imag(Z1));
VA=sqrt(Pr1^2+Qr1^2);
VL=VA/I1;
printf("\n V_L=%3.1f V \n",VL)

QL=PL*tand(acosd(pf2));
Pr2=PL-Pr1;
Qr2=QL-Qr1;
VA_load=sqrt(Pr2^2+Qr2^2);
I2=VA_load/VL;

P2=Pr2+(I2^2*real(Z2));
Q2=Qr2+(I2^2*imag(Z2));
V2=sqrt(P2^2+Q2^2)/I2;
printf("\n V2=%3.1f V \n",V2)
printf("\n Reactive power:P2=%4.1f W \t Q2=%4.1f Var \n",P2,Q2)


