

//example 14.8
//designa channel section by Kennedy theory
clc;funcprot(0);
//given
Q=28;        //discharge
m=1;         //critical velocity ratio
r=7.6;       //B/D

D=(Q/4.46)^(1/2.64);
B=r*D;
R=0.823*D;
V=0.55*(D)^0.64;

//applying kutters formula; V=C(RS)^0.5
//where C=(23+1/N+0.00155/S)*(R*S)^0.5/(1+(23+0.00155/S)*N/R^0.5);
//we get equation in S
//assuming S^0.5=y
y=poly([-1.42D-5,1.55D-3,-0.885,67.4],'x','c');
roots(y);
//taking real values of y
S=0.0126305^2;
B=round(B*10)/10;
D=round(D*100)/100;
mprintf("Width of channel section=%f m.",B);
mprintf("\nDepth of channel section=%f m.",D);
mprintf("\nBed slope=%f.",S);
