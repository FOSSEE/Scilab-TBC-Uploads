clc;
s = %s;
Kp = 1000;disp(Kp,"value of Kp:");
printf("Kp is finite implies a type-0 system \n");
printf("The system is stable\n");
printf("Input is a step since Kp is specified\n");
E = 1/(1+Kp);
disp(E,"Steady state error =");
