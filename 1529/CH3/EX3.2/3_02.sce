//Chapter 3, Problem 2
clc;
A=2;                    //Cross-sectional area in milimetre square
R=300;                  //Resistance of wire
A1=5;                  //Cross-sectional area of same wire
R2=750;                 //Resistance of same wire
K=R*A;                  //Calculating proportionality constant
R1=K/A1;               //Calculating resistance with cross-sectional area 5mm2
A2=K/R2;               //Calculating cross-sectional area with resistance 750ohm
printf("(a) Resistance of wire = %f ohm\n\n\n",R1);
printf("(b) Cross-sectional area of a wire = %f mm^2",A2);
