clc;
clear;
printf("\t\t\tChapter12_example3\n\n\n");
//  Determination of the heat transferred by radiation from dA1 to A. 
// The view factor Fd1_2 can be calculated as Fd1_2=Fd1_3+Fd1_4+Fd1_5
// For Fd1_3
a_13=100;
b_13=250;
c_13=100;
X_13=a_13/c_13;
Y_13=b_13/c_13;
printf("\nFor Fd1_3, the values of a/c=%.1f and b/c=%.1f",X_13,Y_13);
Fd1_3=0.17; // value for Fd1_3 corresponding to above calculated values of a/c and b/c
// For Fd1_4
a_14=300;
b_14=50;
c_14=100;
X_14=a_14/c_14;
Y_14=b_14/c_14;
printf("\nFor Fd1_4, the values of a/c=%.1f and b/c=%.1f",X_14,Y_14);
Fd1_4=0.11; //value for Fd1_4 corresponding to above calculated values of a/c and b/c
// For Fd1_5
a_15=100;
b_15=50;
c_15=100;
X_15=a_15/c_15;
Y_15=b_15/c_15;
printf("\nFor Fd1_5, the values of a/c=%.1f and b/c=%.1f",X_15,Y_15);
Fd1_5=0.09; //value for Fd1_3 corresponding to above calculated values of a/c and b/c
Fd1_2=Fd1_3+Fd1_4-Fd1_5;
printf("\nFd1_2=%.2f",Fd1_2);
printf("\n%d percent of the energy leaving dA1 reaches A",100*Fd1_2);
sigma=0.1714e-8; // Stefan-Boltzmann constant
T1=660;
T2=560;
q12_A1=sigma*Fd1_2*(T1^4-T2^4);
printf("\nThe net heat transferred is %.1f BTU/(hr.sq.ft)",q12_A1);
