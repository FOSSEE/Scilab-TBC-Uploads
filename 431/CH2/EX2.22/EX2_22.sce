//Calculate the value of resistance
//Chapter 2
//Example 2.22
//page 126
clear;
clc;
disp("Example 2.22")
V=440;                //primary voltage in volts
Ia=50;                //armature current in amperes
Ra=0.2;                //armature resistance in ohms
N=600;                  //speed in rpm
E=V-(Ia*Ra);           //emf induced  in volts before adding extra resistance
//E=K*phi*N=K1*Ia*N
K1=E/(Ia*N);
//we have the relation T=Kt1*Ia^2, T1=Kt1*Ia1^2
//when torque is half, say torque be T1
//T1=T/2. r=T/T1
r=2;
Ia1=sqrt(Ia^2/r);
printf("Ia1=%fA",Ia1);
//extra resistance R is introduced in the circuit
N1=400;
E1=(K1*Ia1*N1);
R=((V-E1)/Ia1)-Ra;
printf("\nvalue of extra resistance added=%fohms",R)





