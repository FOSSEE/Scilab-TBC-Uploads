// to find the resistance inductance and the Q factor of the inductor
// example 8-7 in page 209
clc;
// given data
// it is a maxwell's induction bridge
C3=0.1e-6; R1=1.26e+3; R4=500; R3=470; // capacitance and resistor values in farad and ohm
f=100;// frequency =100 Hz
//calculation
printf("Ls=%d mH\n",C3*R1*R4*1000);// here Ls=C3*R1*R4
printf("Rs=%.2f K-ohm\n",R1*R4/(R3*1000));//here Rs=R1*R4/R3
printf("Q=%.2f",(2*%pi*f*C3*R1*R4)/(R1*R4/R3));// Q=w*Ls/Rs
//result
//Ls=63 mH
//Rs=1.34 K-ohm
//Q=0.03