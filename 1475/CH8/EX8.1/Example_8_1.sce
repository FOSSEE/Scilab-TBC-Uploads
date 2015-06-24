// Example 8.1 From the following data
clc;
clear;
P1=[1500 3000 5000 500];
D1=[45 15 30 12];
P2=[6000 5000 6000 3000];
D2=[150 20 30 54];
disp(sum(D2)*1000/sum(P2),"Crude Death Rate for Town II per thousand = ",sum(D1)*1000/sum(P1),"Crude Death Rate for Town I per thousand =");
disp((D2./P2)*1000,"Specific Death Rate for Town II",(D1./P1)*1000,"Specific Death Rate for Town I");
