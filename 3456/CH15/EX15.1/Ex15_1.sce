//Example 15.1
//Mechanics of Metal Working
//Page No. 506
clc;clear;close;

//For Bar which is double in length
L2=2;             //factor (no units)
L1=1;             //factor (no units)
e=(L2-L1)/L1;
e1=log(L2/L1);
r=1-L1/L2;
printf('\nEnginering Strain = %g\nTrue Strain = %g\nReduction = %g',e,e1,r);

//For bar which is halved in length
L1=1;             //factor (no units)
L2=0.5;             //factor (no units)
e=(L2-L1)/L1;
e1=log(L2/L1);
r=1-L1/L2;
printf('\n\nEnginering Strain = %g\nTrue Strain = %g\nReduction = %g',e,e1,r);
