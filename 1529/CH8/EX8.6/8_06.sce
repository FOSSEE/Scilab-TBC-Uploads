//Chapter 8, Problem 6
clc;
B=0.8;
l=30*10^-3;
I=50*10^-3;
F=B*I*l;
F1=300*F;
printf("For a single-turn coil, force on each coil side\n");
printf("Force = %f N\n\n\n",F);
printf("When there are 300 turns on the coil there are effectively 300 parallel conductors each carrying a current of 50 mA.\n");
printf("Thus the total force produced by the current is 300 times that for a single-turn coil. Hence force on coil side,\n");
printf("Force = %f N",F1);
