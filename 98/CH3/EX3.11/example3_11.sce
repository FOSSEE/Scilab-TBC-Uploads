//Chapter 3
//Example 3_11
//Page 54

clear;
clc;

l=[200 100 50 100]
p=[100 150 350 300 100];
t=[6 2 2 8 6];

scf(2);
y=[100 100 100 150 350 300 300 300 300 100 100 100];
bar(y, 2, 'green');
xgrid(0)
xlabel('Time in hours');
ylabel('Load in kW');

md=max(p);
printf("Maximum demand = %.0f kW \n\n", md);
sum_l=sum(l);

printf("(i) Diversity factor = %.3f \n\n", sum_l/md);

ugpd=0;
for i=1:5
  ugpd=ugpd+p(i)*t(i);
end;
printf("(ii) Units generated per day = %.0f kWh \n\n", ugpd);

al=ugpd/24;
printf("(iii) Average load = %.1f kW \n\n", al);

printf("\t Load factor = %.1f %% \n\n", al/md*100);


