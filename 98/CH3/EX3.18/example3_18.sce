//Chapter 3
//Example 3_18
//Page 61

clear;clc;

l=[20 40 50 35 70 40];
t=[8 3 5 3 3 2];

scf(0);
y=[20 20 20 20 20 20 20 20 40 40 40 50 50 50 50 50 35 35 35 70 70 70 40 40];
bar(y, 1, 'red');
xlabel('Time in hours');
ylabel('Load in MW');
xgrid(0);

ugpa=0;
for i=1:6;
  ugpa=ugpa+l(i)*t(i);
end;

printf("Units generated per day = %.0f MWh \n\n", ugpa);

al=ugpa*1000/24;
lf=al/max(l)/1000;
printf("Average load = %.1f kW \n\n", al);
printf("Load factor = %.2f %% \n\n", lf*100);
