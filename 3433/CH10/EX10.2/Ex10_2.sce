clear;
clc;
funcprot(0);

//given data
a_ = 1/3;

//Calculations
R2_R1 = 1/(1-a_)^0.5;
R3_R1 = 1/(1-2*a_)^0.5;
R3_R2 = ((1-a_)/(1-2*a_))^0.5;

//Results
printf('R2/R1 = %.3f\n R3/R1 = %.3f\n R3/R2 = %.3f',R2_R1,R3_R1,R3_R2);
