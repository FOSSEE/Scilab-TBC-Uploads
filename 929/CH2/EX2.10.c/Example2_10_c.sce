//Example 2.10(c)

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

//2.10(c)

Rpot1=100*10^3;

printf("To calibrate the circuit, tie the inputs together and set the Rpot1 pot for the maximum gain (wiper all the way up). Then, while switching the common inputs back and forth between -5V and +5V, adjust the Rpot2 pot for the minimum change at the output.");