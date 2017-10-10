//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex9_3.sce

clc;
clear;
P=45e3;
E=220;
phase=3;
p=6;
f=50;

I=P/(E*sqrt(3));
//From SCC ,the excitation current is,
Isc1=118.1;
If=2.2;
//For this If, the corresponding line voltage from the air gap line is,
V1=202;
I1=1.0;
Vph=V1/sqrt(3);
Xs_unsat=Vph/Isc1;           //Unsaturated reactance in ohm
V=V1/E;
Xs_unsat_pu=V/I1;              //Unsaturated reactance in per unit
printf("\n  Unsaturated value of synchronous reactance=\t %1.4f ohm \t %1.3f p.u \n",Xs_unsat,Xs_unsat_pu)

//For 220 volt from figure,
If=2.9;
Isc2=157;
Vph=E/sqrt(3);
Xs_sat=Vph/Isc2;
Xs_sat_pu=I1/(Isc2/Isc1);
printf("\n  Saturated value of synchronous reactance=\t %1.3f ohm \t %1.3f p.u \n",Xs_sat,Xs_sat_pu)

Ie2=2.9;
Ie1=2.2;
SCR=Ie2/Ie1;
printf("\n  Short circuit ratio=%1.2f \n",SCR)
