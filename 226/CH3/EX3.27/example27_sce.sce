//chapter 3
//example 3.21
//page 119
printf("\n")
printf("given")
Vcc=5;Vf=.7;R1=3.3*10^3;
disp("A)")
Ir1=(Vcc-Vf)/R1;
printf("diode forward current when all input are low is %3.4fA\n",Ir1)
disp("for each diode")
If=Ir1/3
disp("B)")
If2=Ir1/2
If3=If2;
printf(" forward current when input A is high is %3.5fA\n",If3)
disp("C)")
If3=Ir1;
printf(" forward current when input A and B are high and C is low %3.5fA\n",If3)