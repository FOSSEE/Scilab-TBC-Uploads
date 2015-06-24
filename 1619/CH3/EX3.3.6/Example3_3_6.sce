//Exapmle 3.3.6 page 3.34
clc;
clear;

T= 305;
T0 = 160;
T1= 373;

Jth_32 = exp(T/T0);
Jth_100 = exp(T1/T0);
R_j = Jth_100/Jth_32;
printf('Ratio of current densities at 160K is %.2f",R_j);
printf("\n\n***NOTE- Wrong in book...\nJth(100) calculated wrongly...");
To = 55;
Jth_32_new = exp(T/To);
Jth_100_new = exp(T1/To);
R_j_new = Jth_100_new/Jth_32_new;
printf("\n\nRatio of current densities at 55K is %.2f",R_j_new);
//wrong in book...
