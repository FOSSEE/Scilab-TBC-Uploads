//chapter 16
//example 16.4
//page 680
printf("\n")
printf("given")
f=100*10^3;Vo=9;Acl=3;
disp(" design of wein bridge oscillator")
Vcc=Vo+1
C1=1000*10^-12;//standard value
C2=C1;
R1=1/(2*3.14*f*C1)
R2=R1;R4=R2;
R3=2*R4;
R3=3.3*10^3;//use standard value
disp(" minimum full power bandwidth")
f2=Acl*f
SR=2*3.14*f*Vo