//Chapter 5, Problem 12, Figure 5.24
clc;
R1=2.5;
R2=6;
R3=2;
R4=4;
V=200;
//Calculating equivalent resistance Rx of R2 and R3 in parallel
Rx=(R2*R3)/(R2+R3);
//Calculating equivalent resistance RT of R1, Rx and R4 in series
Rt=R1+R4+Rx;
//Supply current
I=V/Rt;
//Calculating current through each resistor
I2=(R3/(R2+R3))*I;
I3=(R2/(R2+R3))*I;
//Calculating p.d across each resistor
V1=I*R1;
Vx=I*Rx;
V4=I*R4;
disp("(a)")
printf("Supply current = %f A\n\n\n",I);
disp("(b)")
printf("Current through R1 and R4 = %f A\n\n\n",I);
printf("Current through R2 = %f A\n\n\n",I2);
printf("Current through R3 = %f A\n\n\n",I3);
disp("(c)")
printf("p.d. across R1 = %f V\n\n\n",V1);
printf("p.d. across R2 and R3 = %f V\n\n\n",Vx);
printf("p.d. across R4 = %f V\n\n\n",V4);
