//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex3_22.sce.

clc;
clear;
V=230;   //Supply voltage in volt
PL1=10E3;  //supply power to loaad 1 in watt 
pf1=0.7;// lagging power factor value of load 1
P2=10E3;   //supply power  to load 2 in watt
pf2=0.5;  //lagging power factor value of load 2

printf("\n (a)")
PL2=P2*pf2;
QL1=PL1*tand(acosd(pf1));
QL2=PL2*tand(acosd(pf2));
PL=PL1+PL2;
QL=QL1+QL2;
QC=-QL;
IC=QC/V;
XC=QC/IC^2;
f=50;
C=1/(2*%pi*f*-XC);
printf("\n     The value of capacitance=%4.1f micro-farad \n",C*1e6)

printf("\n (b)\t(i)")
kVA=sqrt(PL^2+QL^2);
Ig=kVA/V;
printf("\n    Magnitude alternator current without capacitor=%3.1f A \n",Ig)
printf("\n\t(ii)")
kVA=PL;
Ig=kVA/V;
printf("\n    Magnitude alternator current with capacitor=%2.1f A \n",Ig)
//Answer vary dueto roundoff error
