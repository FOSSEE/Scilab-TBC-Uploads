clear;
clc;
Ro=600;D=5;
N=10^(D/20);
R1=Ro*(N+1)/(N-1);
R2=Ro*((N*N)-1)/(2*N);
printf("The desired ladder attenuator will be:\n");
printf("R1 = %f ohms\n",round(R1));
printf("R2 = %f ohms\n",round(R2));
//the difference in result of R1 is due to erroneous value in textbook.
disp("The difference in result of R1 is due to erroneous value in textbook")
