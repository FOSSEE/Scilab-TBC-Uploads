//Chapter 4
//Example 4_7
//Page 77

clear;clc;

pc=50;
lf=0.4;
p=12*1e6;
tax=400000;
other_cost=0.01;
interest=0.05;
dep=0.06;

md=pc;
printf("Annual fixed charges\n");
i_and_d=p*(interest+dep);
afc=i_and_d+tax;
printf("Interest and depreciation = Rs. %.0f \n", i_and_d);
printf("Wages and taxation = Rs. %.0f \n", tax);
printf("Total annual fixed charges = Rs. %.0f \n\n", afc);

printf("Annual running charges\n");
ugpa=md*lf*8760*1000;
cost=other_cost*ugpa;
tac=cost+afc;
cpkWh=tac/ugpa;
printf("Units generated per annum = %.0f kWh \n", ugpa);
printf("Cost of fuel and lubrication = Rs. %.0f \n", cost);
printf("Total annual charges = Rs. %.0f \n", tac);
printf("Cost per kWh = Rs. %.4f \n\n", cpkWh);