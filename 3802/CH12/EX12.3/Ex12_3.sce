//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex12_3.sce

clc;
clear;
P=36;   //power in kilowatt
Vl=440;
f=50;
efficiency=0.89;
pf1=0.85;
pf2=0.95;
P_not=P/3;
P_input=P_not/efficiency;
Q1=P_input*tand(acosd(pf1));
Q2=P_input*tand(acosd(pf2));
Qc=Q1-Q2;
kVA=3*Qc;
printf("\n Total kVA of the capacitors for raising power factor to 0.95 is %2.2f kVAR \n",kVA)
V=Vl/sqrt(3);
Xc=V^2/(Qc*1e3);

printf("\n(a)")
C_star=1/(2*%pi*f*Xc);
printf("\n Required capacitance per phase for star connected capacitors=%3.3f micro-farad \n",C_star/1e-6)

printf("\n(b)")
C_delta=C_star/3;
printf("\n Required capacitance per phase for delta connected capacitors=%2.2f micro-farad \n",C_delta/1e-6)
//Answer vary dueto round off error
