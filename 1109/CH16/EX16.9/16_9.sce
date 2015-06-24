clear;
clc;
Ri1=500;D=15;
N=10^(D/20);N1=fix(N*1000)/1000;
R2=Ri1/(N1-1);
R1=Ri1*(1-(1/N));
printf("The series arm of the L attenuator is %f ohms,while its shunt arm is %f ohms",round(R1),round(R2));
//the difference in result of R2 is due to erroneous value in textbook.
disp("The difference in result of R2 is due to erroneous value in textbook")
