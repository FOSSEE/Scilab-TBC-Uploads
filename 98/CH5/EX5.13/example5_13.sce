//Chapter 5
//Example 5_13
//Page 97

clear;clc;

p=1000;
md=2500;
inc=5.5*1e6;

ds=1000;
rs=400;
id=0.1;
fc=75;
rc=0.05;

gcc=120;
grc=0.03;

cc=rs*ds;
aid=id*cc;
ep=md-2*ds;
kw1=fc*ep;
kwh1=rc*inc;
tac1=aid+kw1+kwh1;

printf("(i) Purchasing diesel set: \n");
printf("Capital cost = Rs. %.0f \n", cc);
printf("Annual interest and depreciation = Rs. %.0f \n", aid);
printf("Extra power to be generated = %.0f kW \n", ep);
printf("Annual charge due to extra kW max demand = Rs. %.0f \n", kw1);
printf("Annual charge due to extra kWh consumption = Rs. %.0f \n", kwh1);
printf("Total Annual cost = Rs. %.0f \n\n", tac1);

kw2=ep*gcc;
kwh2=grc*inc;
tac2=kw2+kwh2;
printf("(ii) Purchasing from grid supply: \n");
printf("Annual charge due to extra kW max demand = Rs. %.0f \n", kw2);
printf("Annual charge due to extra kWh consumption = Rs. %.0f \n", kwh2);
printf("Total Annual cost = Rs. %.0f \n\n", tac2);

cheap=abs(tac1-tac2);

if tac1<tac2

  printf("Alternative (i) is cheaper by Rs. %.0f\n", cheap);
else
 printf("Alternative (ii) is cheaper by Rs. %.0f\n", cheap);


  


