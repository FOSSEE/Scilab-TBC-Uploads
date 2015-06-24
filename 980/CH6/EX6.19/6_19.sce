clc;
clear;
format('e',11);
epsilone_0=8.85*10^-12;
epsilone_r1=2;
epsilone_r2=4;
E1=[-3 5 7];
E1_tan=[-3 5 0];             //tangential component of E1.
E1_n=[0 0 7];                //normal component of E1.
E2_tan=E1_tan;               //as the tangential electric field is continous.
D2_tan=epsilone_r2*epsilone_0*E2_tan;
D1_n=epsilone_r1*epsilone_0*E1_n;
D2_n=D1_n;                  //as the normal electric flux density is continous.
D2=D2_tan+D2_n;
E2=D2/(4*epsilone_0);
disp(D2,"D2=");
disp(E2,"E2=");
Xe1=epsilone_r1-1;           //Xe1=electric susceptibility of the region1.
Xe2=epsilone_r2-1;           //Xe2=electric susceptibility of region2.
P2=epsilone_0*Xe2*E2;
disp(P2,"P2=");
