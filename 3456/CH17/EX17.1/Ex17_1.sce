//Example 17.1
//Forces in rolling
//Page No. 596
clc;clear;close;

mu=0.08;                    //no unit
R=12;                        //in inches
alpha=atand(mu);
dh=mu^2*R;
printf('\nMaximum possible reduction when mu is 0.08 = %g in\n',dh);
mu=0.5;                    //no unit
dh=mu^2*R;
printf('Maximum possible reduction when mu is 0.5 = %g in',dh);
