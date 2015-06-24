clc;
clear;
printf("\t\t\tChapter3_example2\n\n\n");
//  Determination of the heat transferred from the buried pipe per unit length
// shape factor number 8 is selected from table 3.1
// specifications of 10 nominal, schedule 80 pipe from table F1
OD=10.74/12; // diameter in ft
R=OD/2;
T1=140;
T2=65;
k=0.072; // thermal conductivity in BTU/(hr-ft. degree R)
d=18/12; // distance from centre-line
S_L=(2*%pi)/(acosh(d/R));
q_L=k*S_L*(T1-T2);
printf("\nThe heat transferred from the buried pipe per unit length is %.1f BTU/(hr.ft)",q_L);
