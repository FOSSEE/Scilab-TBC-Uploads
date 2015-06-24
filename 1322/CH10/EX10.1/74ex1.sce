
clear;
clc;
close ;
clf;
AGE=[25  30  35  40  45  50];
premium_in_$=[2.33 2.59 2.91 3.31 3.81 4.53];
plot(AGE,premium_in_$,3);
xtitle("Annual Premiums charged by an insurance company","AGE(in years)","premium_in_$");
xgrid;
AGE=43;premium_in_$=3.6;plot(AGE,premium_in_$,'r.diam');
AGE=36;premium_in_$=3;plot(AGE,premium_in_$,'r.diam');
plot(25,2.0,'o')
      
     
     
