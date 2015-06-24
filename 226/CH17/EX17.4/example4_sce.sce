//chapter 17
//example 17.4
//page 724
printf("\n")
printf("given")
f=1*10^3;Ib=500*10^-9;
disp("butterworth second order filter")
R=(70*10^-3)/Ib
R1=R/2
R1=68.1*10^3;//use standard value
R2=R1; 
R3=2*R1
Xc1=sqrt(2)*R2
C1=1/(2*3.14*f*sqrt(2)*R2)
C2=2*C1
fc=1/(2*3.14*(sqrt(R1*R2*C1*C2)));
printf("actual cutoff frequency is %dHz\n",fc)