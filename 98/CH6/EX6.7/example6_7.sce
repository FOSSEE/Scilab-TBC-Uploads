//Chapter 6
//Example 6_7
//PAge 112

clear;clc;

p1=200;
pf1=0.85;
pf2=0.9;
h=2500;
fc=150;
rc=0.05;
cap=420;
loss=100;
id=0.1;

phi1=acos(pf1);
phi2=acos(pf2);

ini=p1*tan(phi1);
x=(ini-p1*tan(phi2))/(1+0.1*tan(phi2));
printf("Lead kVAR taken by tha capacitor is = %.2f kVAR \n\n", x);

printf("Annual cost before pf correction\n");

md1=p1/pf1;
kva1=fc*md1;
uc1=p1*h;
ec1=rc*uc1;
tac1=kva1+ec1;

printf("Max kVA demand = %.2f \n", md1);
printf("kVA demand charges = Rs. %.0f \n", kva1);
printf("Units consumed per year = %.0f kWh \n", uc1);
printf("Energy charges per year = Rs. %.0f \n", ec1);
printf("Total annual cost = Rs. %.0f \n\n", tac1);

printf("Annual cost after pf correction\n");

md2=p1/pf2;
kva2=fc*md2;
ec2=rc*uc1;

aid=x*cap*id;
cap_loss=0.1*x*h;
al=cap_loss*rc;
tac2=kva2+ec2+aid+al;

printf("Max kVA demand = %.2f \n", md2);
printf("kVA demand charges = Rs. %.0f \n", kva2);
printf("Energy charges per year = Rs. %.0f \n", ec2);
printf("Annual interest and depreciation = Rs. %.0f \n", aid);
printf("Annual energy loss in capacitors = %.0f kWh \n", cap_loss);
printf("Annual cost of losses occuring in capacitors = Rs. %.0f \n", al);
printf("Total annual cost = Rs. %.0f \n\n", tac2);

as=tac1-tac2;
printf("Annual saving = Rs. %.0f \n", as);
