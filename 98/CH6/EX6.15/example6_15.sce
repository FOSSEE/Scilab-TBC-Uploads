//Chapter 6
//Example 6_15
//Page 119

clear;clc;

md=50;
lf=0.5;
pf=0.75;
fc=100;
rc=0.05;
lfc=600;
id=0.1;

x=fc;
y=id*lfc;
z=y/x;
ec_pf=sqrt(1-z^2);
kwd=md/lf;
m1=kwd/pf;
m2=kwd/ec_pf;
as=fc*(m1-m2);

printf("Max demand charge = Rs. %.0f/kVA/annum \n", x);
printf("Expendiutre on capacitors = Rs. %.0f/kVA/annum \n", y);
printf("Most economical pf = %.2f \n", ec_pf);
printf("Max kW demand = %.0f kW \n", kwd);
printf("Max kVA demand at %.2f pf = %.2f kVA \n", pf, m1);
printf("Max kVA demand at %.2f pf = %.2f kVA \n", ec_pf, m2);
printf("Annual saving = Rs. %.0f \n", as);


