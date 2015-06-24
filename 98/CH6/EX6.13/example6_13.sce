//Chapter 6
//Example 6_13
//Page 118

clear;clc;

md=175;
pf=0.75;
fc=72;
pae=120;
id=0.1;

x=fc;
y=pae*id;
ec_pf=sqrt(1-(y/x)^2);

printf("MAx demand charges = Rs. %.0f per kVA per annum\n", fc);
printf("Expenditure on phase advancing equipment = Rs. %.0f /kVAR/annum \n", y);
printf("Most economical power factor at which factory should operate = %.3f lag \n", ec_pf);

