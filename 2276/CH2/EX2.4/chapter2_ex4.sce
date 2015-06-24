clc
clear

//input
l1=0.4; //inductance of the first coil in henry which is in series with the second
l2=0.1; //inductance of the second coil in henry
i=5; // current through both the coils in amperes
e=2.25; // energy stored in magnetic field in joules

//calculations
L=(2*e)/(i^2); //total inductance in henry
M=(l1+l2-L)/2; // mutual inductance between the coils in henry
K=M/((l1*l2)^(0.5)); // coupling factor between the coils

//output
mprintf('total inductane is %3.10f H \n mutual inductane between the coils is %3.10f H \n the coupling factor is %3.10f',L,M,K)
