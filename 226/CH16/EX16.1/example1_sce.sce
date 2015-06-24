//chapter 16
//example 16.1
//page 6568
printf("\n")
printf("given")
Vcc=10;Ib=500*10^-9;Acl=29;f=1*10^3;
disp(" phase shift  oscillator")
I1=100*Ib
vo=Vcc-1
vi=vo/Acl
R1=vi/I1
R1=5.6*10^3;//use standard value 5.6Kohm
R2=Acl*R1
R2=180*10^3;//use satndard value 180Kohm to give Acl>180
R3=R2;R=R1;
C=1/(2*3.14*R*f*sqrt(6))