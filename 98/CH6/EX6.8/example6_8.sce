//Chapter 6
//Example 6_8
//PAge 113

clear;clc;

md=750;
pf=0.8;
nc=250;
pr=8.5;
ic=20000;
fc=0.1;

phi=acos(pf);
ac=md*pf;
rc=md*sin(phi);
lead=rc-nc;
kva=sqrt(ac^2+lead^2);
red=md-kva;
m_saving=pr*red;
y_saving=m_saving*12;
fc_year=fc*ic;
net=y_saving-fc_year;

printf("Monthly demand = %.0f kVA \n", md);
printf("kW component of demand = %.0f \n", ac);
printf("kVA component of demand = %.0f \n", rc);
printf("Lead kVA = %.0f kVA \n", lead);
printf("kVA after improvement = %.2f kVA \n", kva);
printf("Reduction in kVA = %.2f kVA \n", red);
printf("Monthly saving on kVA charges = Rs. %.2f \n", m_saving);
printf("Yearly saving on kVA charges = Rs. %.2f \n", y_saving);
printf("Fixed charges per year = Rs. %.0f \n", fc_year);
printf("Net annual saving = Rs. %.0f \n\n", net);