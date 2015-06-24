//Example 2.8(b)

clear;

clc;

R1=10*10^3;

R2=98*10^3;

R3=9.9*10^3;

R4=103*10^3;

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

//vO=A2*v2-A1*v1

A2num=(1+(R2/R1));

A2den=(1+(R3/R4));

A2=A2num/A2den;

A1=R2/R1;

//For first pair of inputs (v1, v2)=(-0.1 V, +0.1V)

vo1m=A2*v21-A1*v11;

//For Second pair of inputs (v1, v2)=(4.9 V, 5.1V)

vo2m=A2*v22-A1*v12;

//For Third pair of inputs (v1, v2)=(9.9 V, 10.1 V)

vo3m=A2*v23-A1*v13;

printf("vo for (-0.1 V,+0.1 V)=%.3f V",vo1m);

printf("\nvo for (4.9 V,5.1 V)=%.3f V",vo2m);

printf("\nvo for (9.9 V,10.1 V)=%.3f V",vo3m);