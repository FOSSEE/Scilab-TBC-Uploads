//Chapter 3
//Example 3_10
//Page 53

clear;clc;

time=[6 4 2 4 4 4];
load_mw=[40 50 60 50 70 40];

scf(0);
y=[40 40 40 50 50 60 50 50 70 70 40 40];
bar(y, 2, 'red');
xlabel('Time in hours');
ylabel('Load in kW');
xgrid(0) 


md=max(y);
printf("\t (i)Maximum demand = %.0f MW \n\n", md);

area=0;
n=6;
for i=1:n;
  area=area+time(i)*load_mw(i);
end;

printf("\t (ii)Units generated per day = %.0f kWh \n\n", area*1000);
al=area*1000/24;
printf("\t (iii)Average load = %.0f kW \n\n", al);
lf=al/md/1000;
printf("\t (iv)Load factor = %.2f %% \n\n", lf*100);

