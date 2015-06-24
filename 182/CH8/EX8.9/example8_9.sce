// to find series equivalent inductance and resistance and find R1 and R3 for maxwell circuit
// example 8-9 in page 211
clc;
printf("part a,\n");
//Data Given
Lp=63e-3; Rp=8.4e+3; f=100;// the parallel inductance in henry and resistace in ohm with 100 hertz frequency 
//calculation
Xp=2*%pi*f*Lp;//parallel inductive reactance in ohm
Rs=(Rp*Xp*Xp)/(Xp*Xp+Rp*Rp);// series resistance in ohm
printf("Rs=%.3f ohm\n",Rs);// equivalent series resistance in ohm
Xs=(Rp*Rp*Xp)/(Xp*Xp+Rp*Rp);// series inductive reactance in ohm
Ls=Xs/(2*%pi*f);// equivalent series inductance in henry
printf("Ls=%.0f mH\n",Ls*1000);
printf("part b,\n");
//Data given
C3=0.1e-6; R4=500; // capacitance in farad and resistance in ohm of maxwell bridge
//calculation
R1=Ls/(C3*R4);//resistance in ohm
printf("R3=%.2f M-ohm",(R1*R4)/(Rs*10^6));
printf("\nR1=%.2f K-ohm",R1/1000);
//result
//part a,
//Rs=0.187 ohm
//Ls=63 mH
//part b,
//R3=3.38 M-ohm
//R1=1.26 K-ohm 