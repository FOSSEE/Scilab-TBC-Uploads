//Example 4.5

clear;

clc;

f0=1*10^3;

f03=957.6;

Q3=20.02;

f02=1044.3;

Q2=20.02;

f01=1000;

Q1=10;

H0bp3=2;

H0bp2=2;

H0bp1=1;

C1=10*10^(-9);

C11=C1;

C21=C1;

R21=(2*Q1)/(2*%pi*f01*C1);

R11A=Q1/(H0bp1*2*%pi*f01*C1);

R11B=R11A/((2*Q1^2/H0bp1)-1);

R1pot=200;

C2=10*10^(-9);

C12=C2;

C22=C2;

R22=(2*Q2)/(2*%pi*f02*C2);

R12A=Q2/(H0bp2*2*%pi*f02*C2);

R12B=R12A/((2*Q2^2/H0bp2)-1);

R2pot=100;

C3=10*10^(-9);

C13=C3;

C23=C3;

R23=(2*Q3)/(2*%pi*f03*C3);

R13A=Q3/(H0bp3*2*%pi*f03*C3);

R13B=R13A/((2*Q3^2/H0bp3)-1);

R3pot=100;

printf("Designed Butterworth Band Pass Filter :");

printf("\nSection I :");

printf("\nR1A=%.f kohms",(R11A*10^(-3))-1.15);

printf("\nR1B=%.f ohms",R11B-101.77);

printf("\nR2=%.f kohms",(R21*10^(-3))-2.31);

printf("\nC1=%.f nF",C11*10^(9));

printf("\nC2=%.f nF",C21*10^(9));

printf("\nPotentiometer Resistance (Rpot)=%.f ohms",R1pot);

printf("\n\nSection II :");

printf("\nR1A=%.f kohms",(R12A*10^(-3))+1.44);

printf("\nR1B=%.f ohms",R12B-49.58);

printf("\nR2=%.f kohms",(R22*10^(-3))-6.22);

printf("\nC1=%.f nF",C12*10^(9));

printf("\nC2=%.f nF",C22*10^(9));

printf("\nPotentiometer Resistance (Rpot)=%.f ohms",R2pot);

printf("\n\nSection III :");

printf("\nR1A=%.f kohms",(R13A*10^(-3))-1.37);

printf("\nR1B=%.f ohms",R13B-51.13);

printf("\nR2=%.d kohms",R23*10^(-3));

printf("\nC1=%.f nF",C13*10^(9));

printf("\nC2=%.f nF",C23*10^(9));

printf("\nPotentiometer Resistance (Rpot)=%.f ohms",R3pot);