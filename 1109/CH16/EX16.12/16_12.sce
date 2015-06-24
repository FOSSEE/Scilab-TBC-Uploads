clear;
clc;
R1=500;R2=110;
Ro=sqrt((2*2*R1*R1/4)+(2*R1*R2));
a=acosh(1+(2*R1/(2*R2)));
Ri1=Ro;Ri2=150;Ai=round(a*10)/10;
R3=(sqrt(Ri1*Ri2))/(fix(sinh(Ai)*100)/100);
R2=(Ri2/(round(tanh(Ai)*10^4)/10^4))-(fix(R3*100)/100);
R1=(Ri1/(round(tanh(Ai)*10^4)/10^4))-R3;
printf("The desired elements of the attenuator are:\n");
printf("R1 = %f ohms\n",fix(R1*100)/100);
printf("R2 = %f ohms\n",fix(R2*100)/100);
printf("R3 = %f ohms\n",fix(R3*100)/100);

