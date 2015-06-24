clc;
clear;
printf("\t\t\tChapter12_example4\n\n\n");
// Determination of the heat transferred to the conveyed parts for the conditions given
L1=1;
angle=%pi*45/180;
L2=L1*sin(angle);
L3=L2;
printf("\nThe Widths are L1=%d m, L2=%.3f m and L3=%.3f m",L1,L2,L3);
T1=303;
T2=473;
sigma=5.67e-8; // Stefan-Boltzmann constant
q21_A2=sigma*(T2^4-T1^4)*((L1/L2)+1-(L3/L2))/2;
q31_A3=sigma*(T2^4-T1^4)*((L1/L2)-1+(L3/L2))/2;
printf("\nThe heat transferred from A2 to A1 is %.2e W/sq.m",q21_A2);
printf("\nThe heat transferred from A3 to A1 is %.2e W/sq.m",q31_A3);
