//Chapter 6
//Example 6_14
//PAge 119

clear;clc;

ad=400;
pf1=0.8;
lf=0.5;
fc=50;
rc=0.05;
pf2=0.95;
pae=100;
id=0.1;

p=ad/lf;
printf("Max kW demand = %.0f kW \n\n", p);

phi1=acos(pf1);
phi2=acos(pf2);

lead=p*(tan(phi1)-tan(phi2));
printf("(i) Leading kVAR taken by the phase advancing equipment = %.2f kVAR \n", lead);
printf("    Capacity of phase advancing equipment = %.2f kVAR \n\n", lead);
x=fc;
y=pae*id;
max1=p/pf1;
max2=p/pf2;
as=fc*(max1-max2);
aexp=y*lead;
net=as-aexp;

printf("(ii) Max demand charges = %.0f kW \n", x);
printf("     Expenditure on phase advnacing equipement = Rs. %.2f /kVAR/annnum \n", y);
printf("     Max demand at %.1f pf = %.2f kVA \n", pf1,max1);
printf("     Max demand at %.1f pf = %.2f kVA \n", pf2,max2);
printf("     Annual saving in max demand charges = Rs. %.2f \n", as);
printf("     Annual expenditure in max demand charges = Rs. %.2f \n", aexp);
printf("     Net Annual saving = Rs. %.2f \n", net);



