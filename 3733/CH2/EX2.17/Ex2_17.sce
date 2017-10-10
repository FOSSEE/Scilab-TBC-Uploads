// Example 2_17
clc;funcprot(0);
//Given data
m=[1 2 3 4 5 6 7 8 9 10];// Month
D=[200 100 20 20 260 180 40 280 60 120];// Discharge in millions of cu-m-per month
Q=100;// millions of cu.m

// Calculation
Cv(1)=D(1);
Cv(2)=Cv(1)+D(2);// Millions of cu-m
Cv(3)=Cv(2)+D(3);// Millions of cu-m
Cv(4)=Cv(3)+D(4);// Millions of cu-m
Cv(5)=Cv(4)+D(5);// Millions of cu-m
Cv(6)=Cv(5)+D(6);// Millions of cu-m
Cv(7)=Cv(6)+D(7);// Millions of cu-m
Cv(8)=Cv(7)+D(8);// Millions of cu-m
Cv(9)=Cv(8)+D(9);// Millions of cu-m
Cv(10)=Cv(9)+D(10);// Millions of cu-m
m=[0 1 2 3 4 5 6 7 8 9 10];// Month
CV=[0 Cv(1) Cv(2) Cv(3) Cv(4) Cv(5) Cv(6) Cv(7) Cv(8) Cv(9) Cv(10)];// Cumulative volume in millions of cu-m
xlabel('Discharge in millions of cu-m  month');
ylabel('Millions of cu.m');
plot(m,CV);
// From the mass curve
Q_a=72.6;// Flow rate at point a in millions of cu-m/month
Q_b=166.4;// Flow rate at point b in millions of cu-m/month
Q_c=137.6;// Flow rate at point c in millions of cu-m/month
printf('\nThe maximum flow available=%0.1f millions of cu-m/month \nThe minimum flow available=%0.1f millions of cu-m/month',Q_b,Q_a);
