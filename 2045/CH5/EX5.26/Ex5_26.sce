//pagenumber 305 example 26
clear
beta1=99;
r1=1*10^3;//ohm
g=beta1/r1;
r=r1*((r1+r1)/(100))/((r1+((r1+r1)/(100))));
disp("make input   =   0");
disp("ground dc");


disp("output resistance   =   "+string((r))+"ohm");
