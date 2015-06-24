//Chapter 3
//Example 3_17
//Page 57

clear;clc;

//Transformer 1- general power service and lighting
ahp=10; akw=5;
bhp=7.5; bkw=4;
chp=15;
dhp=5; dkw=2;

//Transformer 2 - residence lighting
ekw=5;
fkw=4;
gkw=8;
hkw=15;
ikw=20;

//Transformer 3 - Store lighting and power
jkw=10; jhp=5;
kkw=8; khp=25;
lkw=4;

n=0.72;

//Referring to Article 3.8 for demand factor values for various load types
//The factor used to convert HP to kW is 0.746
a=ahp*0.746/n*0.65+akw*0.6;
b=bhp*0.746/n*0.75+bkw*0.6;
c=chp*0.746/n*0.65;
d=dhp*0.746/n*0.75+dkw*0.6;

t1=a+b+c+d;
//diversity factor for consumers of this type is 1.5 as per Article 3.8
md1=t1/1.5;

e=ekw*0.5;
f=fkw*0.5;
g=gkw*0.5;
h=hkw*0.5;
i=ikw*0.5;

t2=e+f+g+h+i;
//diversity factor is given to be between 3 and 4, taking average of these two values
md2=t2/3.5;

j=jhp*0.746/n*0.75+jkw*0.5;
k=khp*0.746/n*0.55+kkw*0.5;
l=lkw*0.5;

t3=j+k+l;
//diversity factor is 1.5
md3=t3/1.5;

//diversity factor between transformers is 1.3
max_load=(md1+md2+md3)/1.3;

printf("Individual maximum demand of the group of consumers connected to transformer 1 as obtaiined from Article 3.8 are as follows: \n");
printf("\t a: %.2f kW \n", a);
printf("\t b: %.2f kW \n", b);
printf("\t c: %.2f kW \n", c);
printf("\t d: %.2f kW \n\n", d);
printf("Total = %.2f kW \n", t1);
printf("Maximum demand on transformer 1 = %.2f kW \n\n\n", md1);

printf("Individual maximum demand of the group of consumers connected to transformer 2 are as follows: \n");
printf("\t e: %.2f kW \n", e);
printf("\t f: %.2f kW \n", f);
printf("\t g: %.2f kW \n", g);
printf("\t h: %.2f kW \n", h);
printf("\t i: %.2f kW \n\n", i);
printf("Total = %.2f kW \n", t2);
printf("Maximum demand on transformer 2 = %.2f kW \n\n\n", md2);

printf("Individual maximum demand of the group of consumers connected to transformer 3 are as follows: \n");
printf("\t j: %.2f kW \n", j);
printf("\t k: %.2f kW \n", k);
printf("\t l: %.2f kW \n\n", l);
printf("Total = %.2f kW \n", t3);
printf("Maximum demand on transformer 3 = %.2f kW \n\n\n", md3);

printf("Diversity factor between transformers is 1.3 \n");
printf("Maximum load on feeder = %.2f kW \n\n", max_load);








