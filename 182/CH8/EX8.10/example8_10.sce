// to find Cx and Rx of figure 8-7 for new balance
// example 8-10 in page 214
clc;
//Data given
C1=0.1e-6; R3=10e+3; R4=14.66e+3; R1=369.3e+3; //bridge capacitance and resistance in farad and ohm respectively
Rp=553.1e+3; Cp=0.068e-6;// parallel resistance in ohm and capacitance in farad
//calculations
Cx=(C1*R3/R4)-Cp;// here Cx+Cp = C1*R3/R4 in farad
printf("Cx=%d pF\n",Cx*10^12);
R=R1*R4/R3;// let R=Rx parallel with Rp in ohm
Rx=1/((1/R)-(1/Rp));// Rx in ohm
printf("Rx=%.0f M-ohm\n",Rx/10^6);
//result
//Cx=212 pF
//Rx=26 M-ohm