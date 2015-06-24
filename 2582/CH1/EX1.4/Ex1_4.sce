//Ex 1.4
clc;clear;close;
format('v',5);
Beta=80;//unitless
disp("IREF=IC1+IC1/Beta+IO/Beta");
disp("IO/IREF=m implies IC1=IO/m as IC1=IREF");
disp("IREF=IO*(1/m+1/m/Beta+1/Beta");
disp("IO/IREF=m/(1+1/Beta+m/Beta");
disp("IO/IREF=m*(1-5/100);//for large Beta");
m=(1/(1-5/100)-1)*Beta-1;//Current transfer ratio
disp(m,"Largest current transfer ratio : ");
