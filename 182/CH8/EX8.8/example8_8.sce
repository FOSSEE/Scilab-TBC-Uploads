//to find the resistance inductance and the Q factor of the inductor
// example 8-8 in page 210
clc;
// given data
// it is a maxwell's induction bridge
C3=0.1e-6; R1=1.26e+3; R4=500; R3=75; // capacitance and resistor values in farad and ohm
f=100;// frequency =100 Hz
//calculation
printf("Lp=%d mH\n",C3*R1*R4*1000);// here Lp=C3*R1*R4
printf("Rp=%.1f K-ohm\n",R1*R4/(R3*1000));//here Rp=R1*R4/R3
printf("Q=%d",(R1*R4/R3)/(2*%pi*f*C3*R1*R4));// Q=Rs/(w*Lp)
//result
//Lp=63 mH
//Rp=8.4 K-ohm
//Q=212 