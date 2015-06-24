//Chapter 6
//Example 6_17
//Page 120

clear;clc;

u=80000;
md=500;
pf1=0.707;
fc=120;
rc=0.025;
pae=50;
pf2=0.9;
id=0.1;

printf("Energy consumed per year = %.0f kWh\n", u);
printf("Max kVA demand = %.0f \n", md);

ac=md*fc+rc*u;
printf("Annual cost of supply = Rs. %.0f \n",ac);
m1=md*pf1;
p=m1;
printf("Max kW demand at %.3f pf = %.2f \n", pf1, m1);
lead=p*(tan(acos(pf1))-tan(acos(pf2)));
printf("Leading kVAR taken by phase advancing equipment = %.1f kVAR \n", lead);
cpae=pae*id*lead;
printf("Annual cost of phase advancing equipment = Rs. %.0f \n", cpae);
m2=p/pf2;
printf("Max kW demand at %.3f pf = %.2f \n", pf2, m2);
red=md-m2;
printf("Reduction in kVA demand = %.1f \n", red);
as=fc*red;
printf("Annual saving in kVA charges = Rs. %.0f \n", as);
printf("Annual saving = Rs. %.0f \n", as-cpae);
