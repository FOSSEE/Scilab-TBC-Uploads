//Chapter 5
//Example 5_9
//PAge 95

clear;clc;

ml=240;
pf=0.8;
ac=50000;
fc=50;
rc=0.1;

md1=ml/pf;
ab1=fc*md1+rc*ac;
flat1=ab1/ac;

md2=ml/1;
ab2=fc*md2+rc*ac;
as=ab1-ab2;

printf("With power factor = %.1f \n", pf);
printf("Maximum demand = %.0f kVA \n", md1);
printf("Annual bill = Rs. %.0f \n", ab1);
printf("Flat rate per unit = Rs. %.3f \n\n", flat1);

printf("With power factor unity \n");
printf("Maximum demand = %.0f kVA \n", md2);
printf("Annual bill = Rs. %.0f \n", ab2);


printf("Annual saving = Rs. %.0f\n", as);

