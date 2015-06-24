clc;
clear;
printf("\t\t\tChapter3_example3\n\n\n");
// Determination of the heat lost through the walls, using the shape-factor method. (b) Repeat the calculations but neglect the effects of the corners; that is, assume only one-dimensional effects through all the walls. 
k = 1.07; // thermal conductivity of silica brick from appendix table B3 in W/(m.K)
// Calculation of total shape factor
// From figure 3.12, for component A
S1_A=0.138*0.138/0.006;
nA=2;
St_A=nA*S1_A; // Total shape factor of component A
printf("\nThe Total shape factor of component A is %.3f ",St_A);
// For component B
S1_B=0.138*0.188/0.006;
nB=4;
St_B=nB*S1_B; // Total shape factor of component B
printf("\nThe Total shape factor of component B is %.3f ",St_B);
// For component C
S3_C=0.15*0.006;
nC=8;
St_C=nC*S3_C; // Total shape factor of component C
printf("\nThe Total shape factor of component C is %.4f ",St_C);
// For component D
S2_D=0.54*0.188;
nD=4;
St_D=nD*S2_D; // Total shape factor of component D
printf("\nThe Total shape factor of component D is %.5f ",St_D);
// For component E
S2_E=0.138*0.54;
nE=8;
St_E=nE*S2_E; // Total shape factor of component E
printf("\nThe Total shape factor of component E is %.5f ",St_E);
S=St_A+St_B+St_C+St_D+St_E;
printf("\nThe Total shape factor is %.2f",S);
printf("\n\t\t\tSolution to part (a)\n");
T1=550;
T2=30;
q=k*S*(T1-T2);
printf("\nThe heat transferred through the walls of the furnace is %d W = %.1f kW",q,q/1000);
printf("\n\n\t\t\tSolution to part (b)\n");
// Neglecting the effects of the edges and corners, the shape factor for all walls is found as 
S=St_A+St_B;
printf("\nNeglecting the effects of the edges and corners, the shape factor for all walls is %.2f",S);
q_1=k*S*(T1-T2);
printf("\nNeglecting the effects of the edges and corners, the heat transferred is %d W = %.1f kW",q_1,q_1/1000);
Error=(q-q_1)/q;
printf("\nThe error introduced by neglecting heat flow through the edges and corners is %.1f percent",Error*100);
