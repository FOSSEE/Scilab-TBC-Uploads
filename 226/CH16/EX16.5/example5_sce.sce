//chapter 16
//example 16.5
//page 683
printf("\n")
printf("given")
f=5*10^3;vo=5;I1=1*10^-3;Vf=.7;
disp("phase shift oscillator")
R1=(vo/29)/I1
R1=150;//use standard value
R2=29*R1
R4=(2*Vf)/I1
R4=1.5*10^3;//use 1.5kohm standard value
R5=R2-R4
R6=.4*R5
R7=.8*R5
R=R1;
C=1/(2*3.14*R*f*sqrt(6))