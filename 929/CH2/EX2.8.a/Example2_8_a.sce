//Example 2.8(a)

clear;

clc;

R1=10*10^3;

R3=R1;

R2=100*10^3;

R4=R2;

//For first pair of inputs (v1, v2)=(-0.1 V, +0.1V)
v11=-0.1;

v21=0.1;

vo1=(R2/R1)*(v21-v11);

vcm1=(v11+v21)/2;

//For Second pair of inputs (v1, v2)=(4.9 V, 5.1V)

v12=4.9;

v22=5.1;

vo2=(R2/R1)*(v22-v12);

vcm2=(v12+v22)/2;

//For Third pair of inputs (v1, v2)=(9.9 V, 10.1 V)

v13=9.9;

v23=10.1;

vo3=(R2/R1)*(v23-v13);

vcm3=(v13+v23)/2;

printf("vo for (-0.1 V,+0.1 V)=%.2f V",vo1);

printf("\nvo for (4.9 V,5.1 V)=%.2f V",vo2);

printf("\nvo for (9.9 V,10.1 V)=%.2f V",vo3);