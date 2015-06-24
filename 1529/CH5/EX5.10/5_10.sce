//Chapter 5, Problem 10, Figure 5.20
clc;
R1=1;
R2=2.2;
R3=3;
R4=6;
R5=18;
R6=4;
//R3, R4 and R5 are connected in parallel, their equivalent resistance R7 is
Z=(1/R3)+(1/R4)+(1/R5);
R7=1/Z;
//circuit is now equivalent to four resistors in series
R=R1+R2+R7+R6;
printf("Equivalent circuit resistance = %f ohm",R);
