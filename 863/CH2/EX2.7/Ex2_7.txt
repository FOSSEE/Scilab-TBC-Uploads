//Caption:Determine fastest rise time
//Ex2.7
clc;
clear;
close;
r=600//Output resistance(in ohms)
c=30//Input capacitance(in pf)
tr=2.2*r*c*10^(-3)
disp(tr,'Fastest rise time(in ns)=')