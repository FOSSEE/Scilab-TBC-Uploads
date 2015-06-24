//chapter 17
//example 17.8
//page 734
printf("\n")
printf("given")
f1=300;f2=30*10^3;
disp(" single stage band pass filter")
C2=1000*10^-12;
R2=1/(2*3.14*f2*C2)
R1=R2;
Xc1=R1;//at voltage gain Av=1
C1=1/(2*3.14*f1*R1)
R3=R2