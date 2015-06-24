clear;
clc;
R1=3;R2=2;R3=2;
A=(R3+R3+R2+R2)/(R1+R3+R1+R2);
Zi1=sqrt((R2*(R1+R3)+(R1*R2))/A);
printf("Zi1 = %f ohms\n",round(Zi1*10)/10);
Zi2=R2+(R3*(R1+Zi1)/(R3+R1+Zi1));
printf(" Zi2 = %f ohms\n",round(Zi2*10)/10);
