//Example 2.10(b)

clear;

clc;

Amin=1;

Amax=10^3;

AI=0.5;

R1=100*10^3;//Tolerance (1%)

R2=AI*R1;//Tolerance (1%)

AImin=Amin/AI;

AImax=Amax/AI;

//AImin<=AI<=AImax
//AImin=1+((2*R3)/(R4+R1)) -> 1+((2*R3)/(R4+R1))-Amin=0 -> (1-AImin)*R4+2*R3+(1-AImin)*R1=0...(i) and AImax=1+((2*R3)/(R4+0)) ->(1-AImax)*R4+2*R3=0....(ii)
//Solving these two equations will give R3 and R4

A=[2 (1-AImin);2 (1-AImax)];

B=[(1-AImin)*R1;0];

R=linsolve(A,B);

R3=R(1,1);//Tolerance (1%)

R4=R(2,1);//Tolerance (1%)

p=0.01;

e=4*p*R2;

R5=100*10^3;

R2red=R2-e-500;//to be on the safer side 0.5 kohms more is reduced 

Rpot=2*(R2-R2red);//Potentiometer Resistance

//Circuit is shown in Fig.2.21 in the book

printf("Designed Instrumentation Amplifier with trimmed resistances :");

printf("\nR1=%.2f kohms",R1*10^(-3));

printf("\nR2=%.2f kohms",R2*10^(-3));

printf("\nR3=%.f kohms",R3*10^(-3));

printf("\nR4=%.f ohms",R4);

printf("\nR5=%.f kohms",R5*10^(-3));

printf("\nR6=%.2f kohms",R2red*10^(-3));

printf("\nR7=%.2f kohms",Rpot*10^(-3));