//Chapter 7
//Example 7_5
//Page 149

clear;clc;

l=50;
mva=5;
pf=0.8;
kv=33;
n=0.9;
sr=2.85*1e-8;

p=mva*1e6*pf;
w=0.1*p;

//Single phase 2-wire system
i1=mva*1e6/kv/1000;
area1=2*sr*i1^2*l*1000/w;
vol1=2*area1*l*1000;

//3-phase 3-wire system
i2=mva*1e6/sqrt(3)/kv/1000;
area2=3*i2^2*sr*l*1000/w;
vol2=3*area2*l*1000;

printf("(I) SINGLE PHASE, 2-WIRE SYSTEM: \n");
printf("Line current = %.1f A \n", i1);
printf("Area of cross section = %.3f*10^-4 m^2 \n", area1*1e4);
printf("Volume of conductor required = %.2f m^3 \n\n", vol1);

printf("(II) 3-PHASE, 3-WIRE SYSTEM: \n");
printf("Line current = %.1f A \n", i2);
printf("Area of cross section = %.3f*10^-4 m^2 \n", area2*1e4);
printf("Volume of conductor required = %.2f m^3 \n\n", vol2);
