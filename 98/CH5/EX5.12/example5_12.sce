//Chapter 5
//Example 5_12
//Page 97

clear;clc;

h=8;
d=300;
kwh1=0.05;
kva1=4.5;
kwh2=5.5;
kva2=5;
al=200;
pf1=0.8;
md=250;
hvc=50;
lhv=0.04;
id=0.12;

md1=md/pf1;
cap=md1/(1-lhv);
ci=hvc*cap;
aid=ci*id;
ac1=cap*kva1*12;
uc1=al*h*d/(1-lhv);
ackwh1=kwh1*uc1;
tac1=aid+ac1+ackwh1;

printf("(i) High voltage supply\n");
printf("    Max demand in kVA = %.2f \n", md1);
printf("    Considering losses in hv equipment, the capacity is = %.2f kVA \n", cap);
printf("    Annual interest and depreciation = Rs. %.0f \n", aid);
printf("    Annual charge due to max kVA demand = Rs. %.0f \n", ac1);
printf("    Units consumed/year = %.0f kWh \n", uc1);
printf("    Annual charge due to kWh consumption = Rs. %.0f \n", ackwh1);
printf("    Total annual cost = Rs. %.0f \n\n", tac1);

md2=md/pf1;
ac2=md2*kva2*12;
uc2=al*h*d;
ackwh2=kwh2*uc2/100;
tac2=ac2+ackwh2;

printf("(ii)Low voltage supply\n");
printf("    Max demand in kVA = %.2f \n", md2);
printf("    Annual charge due to max kVA demand = Rs. %.0f \n", ac2);
printf("    Units consumed/year = %.0f kWh \n", uc2);
printf("    Annual charge due to kWh consumption = Rs. %.0f \n", ackwh2);
printf("    Total annual cost = Rs. %.0f \n\n", tac2);

printf("Difference in annual costs of two systems = Rs. %.0f \n", tac2-tac1);
