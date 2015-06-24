//chapter 17
//example 17.5
//page 7
printf("\n")
printf("given")
f=12*10^3;C1=1000*10^-12;
disp("butterworth second order filter")
C2=C1;
R2=(sqrt(2))/(2*3.14*f*C1)
R1=.5*R2
R3=R2;
fc=1/(2*3.14*(sqrt(R1*R2*C1*C2)));
printf("actual cutoff frequency is %dHz\n",fc)