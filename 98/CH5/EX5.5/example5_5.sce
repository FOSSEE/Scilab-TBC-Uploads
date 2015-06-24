//Chapter 5
//Example 5_5
//PAge 92

clear;clc;

md=50;
u=18*1e7;
ad=75;
fc=9000000;
fcg=2800000;
fctnd=3200000;
l=0.15;
rc=0.9;

printf("Annual fixed charges\n");
fuel=(1-rc)*fc;
tac=fcg+fctnd+fuel;
printf("Total annual charges = Rs. %.0f \n", tac);
cmd=tac/ad/1000;
printf("Cost per kW of maximum demand = Rs. %.0f \n\n", cmd);

printf("Annual running charges\n");
cf=rc*fc;
udc=(1-l)*u;
c=cf/udc;

printf("Cost of fuel = Rs. %.0f \n", cf);
printf("Units deliivered to consumers = %.0f kWh \n", udc);
printf("Cost per kWh = Rs. %.3f \n\n", c);

printf("Tariff is Rs. %.0f of maximum demand plus %.3f rupess per kWh \n\n", cmd, c);



