//Chapter 5
//Example 5_4
//Page 92

clear;clc;

fc=30;
rc=0.03;
fu=400;
rfu=0.06;
add_u=0.05;

rate=fu*rfu-fu*add_u;
x=(fc-rate)/(add_u-rc);

printf("x is the number of units taken per annum for which the annual charges due to both tariffs become equal. \n\n");
printf("Annual charges due to first tariff = Rs. (%d+%.2f*x) \n\n", fc, rc);
printf("Annual charges due to second tariff = Rs. (%d+%.2f*x) \n\n", rate, add_u);
printf("Equating the two equations, x = %.2f kWh \n\n", x);


