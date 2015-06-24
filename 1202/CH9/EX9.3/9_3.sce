
clear
clc

//Example 9.3
disp('Example 9.3')

mu=[1.73 0.05 0.49 0.60 0.44]';//failures/yr
R=exp(-mu);
P=1-R;

R_overall=prod(R);
P_overall=1-R_overall;
mu_overall=-log(R_overall);
MTBF=1/mu_overall;

mprintf("MTBF= %f yr",MTBF)
