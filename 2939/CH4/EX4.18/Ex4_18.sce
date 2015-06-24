
// Ex4_18
clc;

// Given:
N1=10^24;// atoms
N2=10^16;// atoms
N3=1000;// atoms
N4=80;// atoms

// Solution:
N11=N1*0.5;// 1st half life
N12=N11/2;// 2nd half life
N13=N12/2;// 3rd half life
printf("\n The 1st half life, 2nd half life, 3rd half life are %f, %f, %f respectively.",N11,N12,N13)
N21=N2/2;// 1st half life
N22=N21/2;// 2nd half life
N23=N22/2;// 3rd half life
printf("\n The 1st half life, 2nd half life, 3rd half life are %f, %f, %f respectively.",N21,N22,N23)
N31=N3/2;// 1st half life
N32=N31/2;// 2nd half life
N33=N32/2;// 3rd half life
printf("\n The 1st half life, 2nd half life, 3rd half life are %f, %f, %f respectively.",N31,N32,N33)
//Radiactivity is a statistical property. Decay kinetics are reliable only when initial number is large
