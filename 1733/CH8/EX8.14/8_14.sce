//8.14
clc;
Rf=50*10^3;
R1=10*10^3;
R2=R1;
R3=R1;
V1=0.5;
V2=1.5;
V3=0.2;
Vo=-Rf*((V1/R1)+(V3/R3)+(V2/R2));
printf("Output voltage=%.0f V",Vo)
