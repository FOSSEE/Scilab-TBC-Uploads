//Chapter 5
//Example 5_8
//PAge 95

clear;clc;

md=100;
pf=0.8;
lf=0.6;
fc=75;
rc=0.15;

ucpy=md*lf*8760;
mdkva=md/pf;
bill=fc*mdkva+rc*ucpy;

printf("Units consumed per year = %.0f kWh \n\n", ucpy);
printf("Max demand in kVA = %.0f kWh \n\n", mdkva);
printf("Annual bill = %.0f kWh \n\n", bill);

