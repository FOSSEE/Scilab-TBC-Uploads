//Example 11.13
clc;
//Wein's Bridge
//Given values of bridge elements
R1=800;
C1=0.5*10^-6;
C2=1.0*10^-6;
R2=400;
R4=1000;
//Frequency of the circuit
x=sqrt(C1*C2*R1*R2);
f=invr(2*%pi*x);
printf('\nFrequency for which bridge is balance is %.2f Hz\n',f)
//Given is following condition
// R2/R1 + C1/C2 = R4/R3
// R3 = R = unknown
R=R4*invr(R2/R1+C1/C2);
printf('\nValue of resistence required to balance bridge is %.2f ohm\n',R)