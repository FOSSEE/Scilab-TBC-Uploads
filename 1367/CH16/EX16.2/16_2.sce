//Determine critical field
//Ex:16.2
clc;
clear;
close;
ho=0.0803;//in A/m
t1=3;//in K
t2=10;//in k
tc=7.17;//in K
hc1=ho*(1-(t1/tc)^2);
disp(hc1,"Critical field at 3K (in A/m) = ");
hc2=ho*(1-(t2/tc)^2);
disp(hc2,"Critical field at 10K (in A/m) = ");