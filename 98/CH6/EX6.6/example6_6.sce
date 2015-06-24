//Chapter 6
//Example 6_6
//Page 112

clear;clc;

p=800;
pf1=0.8;
pf2=0.9;
h=3000;
fc=100;
rc=0.2;
cap=60;
id=0.1;

phi1=acos(pf1);
phi2=acos(pf2);

lead=p*(tan(phi1)-tan(phi2));

printf("Leading kVAR taken by the capacitors = %.2f \n\n", lead);
printf("Annual cost before pf correction\n");

md1=p/pf1;
kva1=fc*md1;
uc1=p*h;
ec1=rc*uc1;
tac1=kva1+ec1;

printf("Max kVA demand = %.2f \n", md1);
printf("kVA demand charges = Rs. %.0f \n", kva1);
printf("Units consumed per year = %.0f kWh \n", uc1);
printf("Energy charges per year = Rs. %.0f \n", ec1);
printf("Total annual cost = Rs. %.0f \n\n", tac1);

printf("Annual cost after pf correction\n");

md2=p/pf2;
kva2=fc*md2;
ec2=rc*uc1;
cc=cap*lead;
aid=id*cc;
tac2=kva2+ec2+aid;

printf("Max kVA demand = %.2f \n", md2);
printf("kVA demand charges = Rs. %.0f \n", kva2);
printf("Energy charges per year = Rs. %.0f \n", ec2);
printf("Capital cost of capacitors = Rs. %.0f \n", cc);
printf("Annual interest and depreciation = Rs. %.0f \n", aid);
printf("Total annual cost = Rs. %.0f \n\n", tac2);

as=tac1-tac2;
printf("Annual saving = Rs. %.0f \n", as);



