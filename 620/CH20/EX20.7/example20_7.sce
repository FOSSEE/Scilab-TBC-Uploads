p1=60;
t=8;
p2=9;
amt=20;
cost=0.08;
disp("Part a");
total=365*t*p1*cost/1000;
disp("Cost (in $) to operate the incandescent lamp for a year is"); disp(total);
disp("Part b");
total2=365*t*p2*cost/1000;
disp("Cost (in $ )to operate the fluorescent lamp for a year is"); disp(total2);
disp("Part c");
sav=total-total2;
mon=amt*12/sav;
t1=10000;
t2=t1-365*t*mon/12;
disp("the time (in hours) necessary for the energy savings is");disp(t2);