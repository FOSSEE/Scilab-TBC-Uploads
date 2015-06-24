//Example 5.1
clc;clear;close;
P=100;//MW
drop=4;//%(No load to full load drop)
f=50;//Hz
disp("Part(i)");
p=1;//MW(For calculating per unit MW)
R=(drop/100)*f/p;//Hz/p.u.MW
disp(R,"Speed regulation in Hz/p.u.MW");
R=(drop/100)*f/P;//Hz/MW
disp(R,"Speed regulation in Hz/MW");
disp("Part(ii)");
del_f=-0.1;//Hz(Frequency drop)
delP=-1/R*del_f;//MW(Change in power output)
disp(delP,"Change in power output(MW)");
