clear;
clc;
D=20;Ri1=200;Ri2=500;
Ai=D*0.115;
Gi1=1/Ri1;Gi2=1/Ri2;
G3=(sqrt(Gi1*Gi2))/sinh(Ai);
G2=(Gi2/tanh(Ai))-G3;
G1=(Gi1/tanh(Ai))-G3;
R3=1/G3;R2=1/G2;R1=1/G1;
printf("The desired pi attenuator will be:\n");
printf(" R1 = %f ohms\n",round(R1*10)/10);
printf(" R2 = %f ohms\n",round(R2*10)/10);
printf(" R3 = %f ohms\n",round(R3));
//the difference in result of R3 is due to erroneous value in textbook.
disp("The difference in result of R3 is due to erroneous value in textbook")
