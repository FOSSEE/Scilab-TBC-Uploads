//Example 8.2 Calculate Standarised Death Rates for Town I and Town II.
clc;
clear;
T1=[30 5 6 24];
T2=[25 6 5 28];
Std_pop=[2200 3000 2700 2100];
disp(Std_pop,"Standard Population =",T2,"Town II Specific death Rate =",T1,"Town I Specific death Rate =");
disp(sum(T2.*Std_pop)/sum(Std_pop),"Standarised Death Rate  for Town II =",sum(T1.*Std_pop)/sum(Std_pop),"Standarised Death Rate for ");
