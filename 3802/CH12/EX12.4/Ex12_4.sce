//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex12_4.sce


//The input data taken from Example:12.3
clc;
clear;
P=36;
Vl=440;
f=50;
efficiency=0.89;
pf1=0.85;
pf2=0.95;
Pm=P/efficiency;
Qm=Pm*tand(acosd(pf1));
Qs=Pm*tand(acosd(pf2));
Qc=Qm-Qs;
Qc_phase=Qc/3;
kVA=Qc_phase;
printf("\n Total kVA of the capacitors for raising power factor to 0.95 is %2.2f kVAR \n",Qc)

printf("\n(a)")
Vph=Vl/sqrt(3);
Iph=kVA*1e3/Vph;
C=Iph/(2*%pi*f*Vph);
printf("\n Required capacitance per phase for star connected capacitors=%3.3f micro-farad \n",C/1e-6)

printf("\n(b)")
Vph=Vl;
Iph=kVA*1e3/Vph;
C=Iph/(2*%pi*f*Vph);
printf("\n Required capacitance per phase for delta connected capacitors=%3.3f micro-farad \n",C/1e-6)
//Answer vary dueto round off error
