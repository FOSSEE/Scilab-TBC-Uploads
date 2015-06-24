//Chapter 3
//Example 3_15
//Page 56

clear;clc;

l=[20 40 60 20 50 20];
t=[2 4 4 4 4 6];

scf(0);
subplot(1,2,1)
y=[20 20 40 60 20 50];
bar(y, 1, 'red');
xgrid(0);
xlabel('Time of day');
ylabel('Load in kW');
title('Load curve');

subplot(1,2,2)
r=[60 50 40 20 20 20];
bar(r, 1, 'green');
xgrid(0);

xlabel('Hours duration');
ylabel('Load in kW');
title('Load duration curve');

area=0;
for i=1:6
  area=area+l(i)*t(i);
end;
printf("Units generated per day = %.0f MWh \n\n", area);
