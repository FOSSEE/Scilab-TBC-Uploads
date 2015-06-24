//Determine transition temperature and critical field
//Ex:16.10
clc;
clear;
close;
hc1=21;//in A/m
hc2=10;//in A/m
tc=7;//in K
t=14;//in K
h=hc1/hc2;
//Determining critical temperature
tc1=sqrt(3626/11);//by quadratic eqn in the example
ho=hc1/(1-(tc^2/tc1^2));
disp(ho,"Critical field at 0 K (in A/m) = ");
t=4.2;//in k
hc=ho*(1-(t/tc1)^2);
disp(hc,"Critical field At 4.2 k (in A/m) = ");