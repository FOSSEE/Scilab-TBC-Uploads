// To find the resistance R1 and R3 in fig 8-8
// example 8-6 in page 207
clc;
// Given data
R4=5e+3; L1=100e-3; Ls=500e-3; Rs=270; R3=1e+3; // resistances in ohm and inductances in henry
//calculation
printf("R3=%d K-ohm\n",R4*L1/(Ls*1000));
printf("R1=%d ohm",Rs*R3/R4);
//result
//R3=1 K-ohm
//R1=54 ohm 