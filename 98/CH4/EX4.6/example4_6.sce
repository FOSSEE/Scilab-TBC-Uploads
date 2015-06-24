//Chapter4
//Example 4_6
//Page 76

clear;clc;

md=100;
cost=160000;
afc_rate=0.12;
interest=0.05;
dep=0.05;
tax=0.02;
lf1=1;
lf2=0.5;

afc=afc_rate*cost;
printf("Annual fixed charges = Rs. %.0f \n\n", afc);

printf("When laod factor is 100%% \n");
ugpa1=md*lf1*8760;
fc1=afc/ugpa1;
printf("Units generated per annum = %.0f kWh \n", ugpa1);
printf("Fixed charges per kWh = Rs. %.5f \n\n", fc1);

printf("When laod factor is 50%% \n");
ugpa2=md*lf2*8760;
fc2=afc/ugpa2;
printf("Units generated per annum = %.0f kWh \n", ugpa2);
printf("Fixed charges per kWh = Rs. %.5f \n\n", fc2);
