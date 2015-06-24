//Chapter3 
//Example 3_3
//PAge 50

clear;clc;

max_dem =100;
p1=100;
t1=2;
p2=50;
t2=6;
no_operation =45;


//Annual load factor
e_per_day=(p1*t1)+(p2*t2);
printf("Energy per day = %.2f MWh \n\n", e_per_day)
operation_days=365-no_operation;
e_per_year = e_per_day*operation_days;
printf("energy per year = %.2f MWh\n\n", e_per_year)
alf= e_per_year/max_dem/(operation_days*24);
printf("Annual load factor = %.2f %% \n\n", alf*100);
