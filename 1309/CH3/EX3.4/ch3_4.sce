clc;
clear;
printf("\t\t\tChapter3_example4\n\n\n");
// Determination of the conduction shape factor for the underground portion of the configuration
// specifications of  4 nominal, schedule 40 pipe from table F1
OD=4.5/12; // diameter in ft
R=OD/2;
// For pipe A
L_A=4.5; // length in ft
// shape factor number 9 is selected from table 3.1
S_A=(2*%pi*L_A)/(log(2*(L_A)/R));
printf("\nThe Shape Factor of pipe A is %.1f",S_A);
// For pipe B
L_B=18; // length in ft
// shape factor number 9 is selected from table 3.1
S_B=(2*%pi*L_B)/(acosh(L_A/R));
printf("\nThe Shape Factor of pipe B is %.1f",S_B);
S=2*S_A+S_B;
printf("\nThe total conduction shape factor for the system is %.1f",S);
